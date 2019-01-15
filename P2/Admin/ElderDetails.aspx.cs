using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2.Admin
{
    public partial class ElderDetails : System.Web.UI.Page
    {
        Elderlies objElder = new Elderlies();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if (Request.QueryString["elderid"] != null)
                {

                    objElder.ElderID = Request.QueryString["elderid"];
                    int errorCode = objElder.getDetails();

                    if (errorCode == 0)
                    {
                        lblId.Text = objElder.ElderID.ToString();
                        lblSerialNo.Text = objElder.SerialNo.ToString();

                        txtName.Text = objElder.FullName.ToString();
                        txtAddress.Text = objElder.Address.ToString();
                        txtContactNo.Text = objElder.Contact.ToString();
                        txtDietary.Text = objElder.Dietary.ToString();
                        txtHealth.Text = objElder.HealthCondition.ToString();

                    }

                    else if (errorCode == -2)
                    {
                        lblMessage.Text = "Unable to retrieve Elder Details for ID" + objElder.ElderID;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objElder.ElderID = lblId.Text;

                objElder.SerialNo = lblSerialNo.Text;

                objElder.FullName = txtName.Text;

                objElder.Address = txtAddress.Text;

                objElder.Contact = txtContactNo.Text;

                objElder.Dietary = txtDietary.Text;

                objElder.HealthCondition = txtHealth.Text;

                int errorCode = objElder.updateElderDetails();

                if (errorCode == 0)
                {
                    lblMessage.Text = "Elder Record has been inserted";
                }

                else if (errorCode == -2)
                {
                    lblMessage.Text = "Unable to save record as elder is not found";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["elderid"] != null)
            {
                objElder.ElderID = lblId.Text;
                int errorCode = objElder.delete();
                if (errorCode == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(),
    "Success", "<script type='text/javascript'>alert('Success');window.location='ViewElderDetails.aspx';</script>'");
                }
            }
        }
    }
}