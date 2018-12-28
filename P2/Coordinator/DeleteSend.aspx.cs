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
    }
}