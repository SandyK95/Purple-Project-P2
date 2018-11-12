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

            Coordinators objCoordinator = new Coordinators();
            objCoordinator.EmailAdd = loginID;
            objCoordinator.Password = password;
            string CerrorCode = objCoordinator.getLogin();

            Volunteers objVolunteer = new Volunteers();
            objVolunteer.EmailAddr = loginID;
            objVolunteer.Password = password;
            string VerrorCode = objVolunteer.getLogin();

            Vendor1 objVendor = new Vendor1();
            objVendor.EmailAdd = loginID;
            objVendor.Password = password;
            string ZerrorCode = objVendor.getLogin();

            if (CerrorCode == "Coordinator")
            {
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                Response.Redirect("Coordinator/CoordinatorMain.aspx");
            }

            else if (VerrorCode == "Volunteer")
            {
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                Response.Redirect("Volunteer/VolunteerMain.aspx");
            }

            else if (ZerrorCode == "Vendor")
            {
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                Response.Redirect("Vendor/VendorMain.aspx");
            }


            else
            {
                //Display error message
                lblMessage.Text = "Invalid Login Credentials";
            }


        }

       
    }
}