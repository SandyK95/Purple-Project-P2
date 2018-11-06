using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2.Volunteer
{
    public partial class VolunteerMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Elderlies objElder = new Elderlies();
            Volunteers objVolunteer = new Volunteers();

            objVolunteer.EmailAddr = Session["LoginID"].ToString();
            objVolunteer.getPass();
            objVolunteer.getId();

            objElder.Prepare = objElder.getPrepare();

            if (objElder.getPrepare() == "Y")
            {
                lblStatus.Text = "Delivered!";
            }
            else
            {
                lblStatus.Text = "Still progresing!";
            }
        }
    }
}