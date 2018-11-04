using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2.Volunteer
{
    public partial class UpdateStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Elderlies objElder = new Elderlies();
                objElder.ElderID = Request.QueryString["ElderID"];
                objElder.getDetails();
                objElder.status = objElder.getStatus();

                lblElderName.Text = objElder.FullName;
                lblElderID.Text = objElder.SerialNo;
                lblAddress.Text = objElder.Address;

                if (objElder.getStatus() == "Y")
                {
                    rblSuccess.SelectedIndex = 0;
                }
                else
                {
                    rblSuccess.SelectedIndex = 1;
                    txtFeedback.Visible = true;
                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Volunteer/ViewElder.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Elderlies objElder = new Elderlies();
            objElder.ElderID = Request.QueryString["ElderID"];
            objElder.getDetails();
            objElder.status = objElder.getStatus();

            if (rblSuccess.SelectedIndex == 0)
            {
                lblChanges.Text = objElder.setSuccess();
                txtFeedback.Visible = false;
            }
            else
            {
                lblChanges.Text = objElder.setUnsuccess();
                txtFeedback.Visible = true;
                //Feedback coding
            }

        }
    }
}