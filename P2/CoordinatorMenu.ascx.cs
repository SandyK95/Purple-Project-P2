using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2
{
    public partial class CoordinatorMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CoordLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon(); //deletes all user data stored in the session
            Response.Redirect("../Home/HomePageMain.aspx"); //redirect to start page
        }
    }
}