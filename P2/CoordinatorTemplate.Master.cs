using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2
{
    public partial class CoordinatorTemplate : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginID"] != null)
            {
                lblLoginID.Text = (string)Session["LoginID"];
                lblCurrentUsers.Text = "There are currently \t" + Application["CurrentUsers"] + "\t users";

            }
        }
    }
}