using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace P2.Vendor
{
    public partial class Edit_DietaryNeeds : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Elderlies objElder = new Elderlies();

            if (!Page.IsPostBack)
            {

                if (Request.QueryString["elderid"] != null)
                {

                    objElder.ElderID = (Request.QueryString["elderid"]);

                    int errorCode = objElder.getDetails();
                    if (errorCode == 0)
                    {
                        lblName.Text = objElder.FullName;
                        lblSerialNo.Text = objElder.SerialNo;
                        dd_Prepare.SelectedValue = objElder.Prepare.ToString();
                        ddlTiming.SelectedValue = objElder.Timing.ToString();
                    }
                    else if (errorCode == -2)
                    {
                        lblMessage.Text = "Unable to retrieve Elder details for ID " + objElder.ElderID;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }

                }

                if (objElder.getMeal() == "Lunch")
                {
                    rblMeal.SelectedIndex = 0;
                }
                else
                {
                    rblMeal.SelectedIndex = 1;
                }
            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                Elderlies objelder = new Elderlies();

                objelder.ElderID = Request.QueryString["elderID"];

                if (dd_Prepare.SelectedIndex == 0)
                {
                    objelder.Prepare = "Completed";
                }
                else
                {
                    objelder.Prepare = "Still Progressing";
                }

                int errorCode = objelder.update();

                if (rblMeal.SelectedIndex == 0 && ddlTiming.SelectedIndex == 0)
                {
                    lblMealTiming.Text = objelder.setLunch();
                }

                if (rblMeal.SelectedIndex == 1 && ddlTiming.SelectedIndex == 1)
                {
                    lblMealTiming.Text = objelder.setDinner();
                }

                if (errorCode == 0)
                {
                    lblMessage.Text = "Elder record has been updated successfully";
                }
                else if (errorCode == -2)
                {
                    lblMessage.Text = "Unable to save record as elder is not found";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }

            }

        }
        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_DietaryNeeds.aspx");
        }

        protected void dd_Prepare_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}