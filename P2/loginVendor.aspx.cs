using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace P2
{
    public partial class loginVendor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string loginID = txtloginID.Text.ToLower(); //Textbox: txtLoginID
            string password = txtPassword.Text; //Textbox: txtPassword


            Vendor1 objVendor = new Vendor1();
            objVendor.EmailAdd = loginID;
            objVendor.Password = password;
            string CerrorCode = objVendor.getLogin();


            if (CerrorCode == "Vendor")
            {
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                Response.Redirect("Vendor/VendorMain.aspx");
            }

            else
            {

                lblMessage.Text = "Invalid Login Credentials";
            }
        }
    }
}