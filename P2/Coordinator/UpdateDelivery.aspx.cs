using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace P2.Coordinator
{
    public partial class UpdateDelivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["elderid"] != null)
                {
                    Elderlies objElder = new Elderlies();
                    objElder.ElderID = Request.QueryString["elderid"];
                    int errorCode = objElder.getDetails();

                    if (errorCode == 0)
                    {
                        lblName.Text = objElder.FullName;
                        lblSerialNo.Text = objElder.SerialNo;
                    }
                    else if (errorCode == -2)
                    {
                        lblMessage.Text = "Unable to retrieve Elder details for ID " + objElder.ElderID;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }

        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorElder.aspx");
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Elderlies objelder = new Elderlies();

                objelder.ElderID = Request.QueryString["elderID"];
                int errorCode = objelder.setStatus();
                int errorCode1 = objelder.deleteFeedback();
                if (errorCode == 0 || errorCode1 == 0)
                {
                    lblMessage.Text = "Done Create Meal";
                }
                else
                {
                    lblMessage.Text = "Error";
                }
            }
        }
    }
}