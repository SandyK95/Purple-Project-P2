using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2
{
    public partial class loginVolunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            string loginID = txtloginID.Text.ToLower(); //Textbox: txtLoginID
            string password = txtPassword.Text; //Textbox: txtPassword

            Volunteers objVolunteer = new Volunteers();
            objVolunteer.EmailAddr = loginID;
            objVolunteer.Password = password;
            string VerrorCode = objVolunteer.getLogin();

            if (VerrorCode == "Volunteer")
            {
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                Response.Redirect("Volunteer/VolunteerMain.aspx");
            }

            else
            {
                //Display error message
                lblMessage.Text = "Invalid Login Credentials";
            }
        }
    }
}