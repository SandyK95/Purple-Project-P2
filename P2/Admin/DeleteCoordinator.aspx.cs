using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2.Admin
{
    public partial class RequestDelete : System.Web.UI.Page
    {
        Admininstrator objAdmin = new Admininstrator();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["coordinatorid"] != null)
            {
                int coordinatorid = Convert.ToInt32(Request.QueryString["coordinatorid"]);
                objAdmin.coordinatorid = coordinatorid;

                int errorCode = objAdmin.deleteCoordinator();
                if (errorCode == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(),
    "Success", "<script type='text/javascript'>alert('Success');window.location='ViewCoordinatorVendors.aspx';</script>'");

                }
            }
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCoordinatorVendors.aspx");
        }
    }
}