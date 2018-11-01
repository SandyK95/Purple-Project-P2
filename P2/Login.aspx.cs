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
            Student objStudent = new Student();
            //Get the email of student
            objStudent.eMail = loginID;
            //Get the password of student
            objStudent.password = password;
            string SerrorCode = objStudent.getLogin();

            Mentor objMentor = new Mentor();
            //Get the email of mentor
            objMentor.eMail = loginID;
            //Get the password of mentor
            objMentor.password = password;
            string MerrorCode = objMentor.getLogin();

            Parent objParent = new Parent();
            //Get the email of mentor
            objParent.eMail = loginID;
            //Get the password of mentor
            objParent.password = password;
            string PerrorCode = objParent.getLogin();


            if (loginID == "admin@ap.edu.sg" && password == "passAdmin")
            {
                //Save the Login id and time in the Session
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                //Redirect user to AdminMain.aspx page
                Response.Redirect("Admin/AdminMain.aspx");
            }
            else if(SerrorCode == "Student")
            {
                //Save the Login id and time in the Session
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                //Redirect user to StudentMain.aspx page
                Response.Redirect("Student/StudentMain.aspx");
            }
            else if (MerrorCode == "Mentor")
            {
                //Save the Login id and time in the Session
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                //Redirect user to StudentMain.aspx page
                Response.Redirect("Mentor/MentorMain.aspx");
            }
            else if (PerrorCode == "Parent")
            {
                //Save the Login id and time in the Session
                Session["LoginID"] = loginID;
                Session["LoggedInTime"] = DateTime.Now.ToString();
                //Redirect user to StudentMain.aspx page
                Response.Redirect("Parent/ParentMain.aspx");
            }

            else
            {
                //Display error message
                lblMessage.Text = "Invalid Login Credentials";
            }


        }

       
    }
}