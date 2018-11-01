using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            // Read inputs from textboxes
            string loginID = txtLoginID.Text.ToLower(); //Textbox: txtLoginID
            string password = txtPassword.Text; //Textbox: txtPassword
         
            if (loginID == "coordinator@ap.edu.sg" && password == "passCoordi")
            {
                //Save the Login id and time in the Session
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                //Redirect user to AdminMain.aspx page
                Response.Redirect("Coordinator/CoordinatorMain.aspx");
            }
            
            else
            {
                //Display error message
                lblMessage.Text = "Invalid Login Credentials";
            }


        }

       
    }
}