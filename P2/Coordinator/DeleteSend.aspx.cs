using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2.Coordinator
{
    public partial class DeleteSend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["volunteerid"] != null)
            {
                lblVolunteerID.Text = Request.QueryString["volunteerid"];
                lblName.Text = Request.QueryString["name"];
            }

        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["volunteerid"] != null)
            {
                int volunteerid = Convert.ToInt32(Request.QueryString["volunteerid"]);

                Admininstrator objAdmin = new Admininstrator();
                objAdmin.volunteerid = volunteerid;
                objAdmin.dateCreated = DateTime.Today;
                int errorCode = objAdmin.delete();

                if (errorCode == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), 
                        "Success", "<script type='text/javascript'>alert('Success');window.location='ViewVolunteers.aspx';</script>'");
                }
            }
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewVolunteers.aspx");
        }
    }
}



//string script = "if(confirm(\"Are you sure?\")){ alert(\"Success\");} else { alert(\"Cancel\");}";
//System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", script, true);