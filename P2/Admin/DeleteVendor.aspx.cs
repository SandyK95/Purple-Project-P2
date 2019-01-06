using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2.Admin
{
    public partial class DeleteVendor : System.Web.UI.Page
    {
        Admininstrator objAdmin = new Admininstrator();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["vendorid"] != null)
            {
                lblVendorID.Text = Request.QueryString["vendorid"];
                lblName.Text = Request.QueryString["name"];
            }
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCoordinatorVendors.aspx");
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["vendorid"] != null)
            {
                int vendorid = Convert.ToInt32(Request.QueryString["vendorid"]);
                objAdmin.vendorid = vendorid;
                int errorCode = objAdmin.deleteVendor();

                if (errorCode == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(),
    "Success", "<script type='text/javascript'>alert('Success');window.location='ViewCoordinatorVendors.aspx';</script>'");
                }

            }
        }
    }
}