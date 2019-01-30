using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace P2.Volunteer
{
    public partial class UpdateStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Elderlies objElder = new Elderlies();
                objElder.ElderID = Request.QueryString["ElderID"];
                objElder.getDetails();
                objElder.status = objElder.getStatus();

                lblElderName.Text = objElder.FullName;
                lblElderID.Text = objElder.SerialNo;
                lblAddress.Text = objElder.Address;
                lblMeal.Text = objElder.Meal;

                if (objElder.getStatus() == "Y")
                {
                    rblSuccess.SelectedIndex = 0;
                }
                else if (objElder.getStatus() == "P")
                {
                    rblSuccess.SelectedIndex = 1;
                    txtFeedback.Visible = true;
                }
                else
                {
                    rblSuccess.SelectedIndex = 2;
                    txtFeedback.Visible = true;
                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Volunteer/ViewElder.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Elderlies objElder = new Elderlies();
            objElder.ElderID = Request.QueryString["ElderID"];
            objElder.getDetails();
            objElder.status = objElder.getStatus();

            if (rblSuccess.SelectedIndex == 0)
            {
                lblChanges.Text = objElder.setSuccess();
                txtFeedback.Visible = false;
            }

            else
            {
                lblChanges.Text = objElder.setUnsuccess();
                txtFeedback.Visible = true;

                //Feedback coding

                if (txtFeedback.Text.Length > 1)
                {
                    Volunteers objVolunteer = new Volunteers();
                    objVolunteer.EmailAddr = Session["LoginID"].ToString();
                    objVolunteer.Password = objVolunteer.getPass();
                    objVolunteer.getDetails();
                    string feedbacktext = txtFeedback.Text;
                    string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();

                    SqlConnection conn = new SqlConnection(strConn);

                    SqlCommand cmd = new SqlCommand("INSERT INTO Feedback(VolunteerID, ElderID, Feedback, DateCreated) Output inserted.FeedbackID " +
                        "Values(@volunteerid, @ElderID, @feedbacktext, GetDate())", conn);

                    string elderid = Request.QueryString["ElderID"];
                    cmd.Parameters.AddWithValue("@volunteerid", objVolunteer.VolunteerID);
                    cmd.Parameters.AddWithValue("@ElderID", elderid);
                    cmd.Parameters.AddWithValue("@feedbacktext", feedbacktext);

                    SqlDataAdapter daFeedback = new SqlDataAdapter(cmd);

                    DataSet result = new DataSet();

                    conn.Open();

                    int id = cmd.ExecuteNonQuery();

                    conn.Close();
                    lblFeedback.Text = "Success Sent!";
                }

                else
                {
                    lblFeedback.Text = "Error!";
                }
            }
        }
    }
}