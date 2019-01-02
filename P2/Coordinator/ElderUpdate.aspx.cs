using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace P2.Coordinator
{
    public partial class ElderUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                displayVolunteerDropDownList();
                if (Request.QueryString["elderid"] != null)
                {
                    Elderlies objElder = new Elderlies();
                    objElder.ElderID = Request.QueryString["elderid"];
                    int errorCode = objElder.getDetails();

                    if (errorCode == 0)
                    {
                        lblName.Text = objElder.FullName;
                        lblSerialNo.Text = objElder.SerialNo;
                        dd_Volunteer.SelectedValue = objElder.volunteer.ToString();
                    }
                    else if (errorCode == -2)
                    {
                        lblMessage.Text = "Unable to retrieve Elder details for ID " + objElder.ElderID;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Elderlies objElder = new Elderlies();

                objElder.ElderID = Request.QueryString["elderid"];

                if (dd_Volunteer.SelectedIndex != 0)
                {
                    objElder.volunteer = dd_Volunteer.SelectedValue;
                }

                int errorCode = objElder.updateVol();
                if (errorCode == 0)
                {
                    lblMessage.Text = "Updated";
                }
                else if (errorCode == -2)
                {
                    lblMessage.Text = "Fail";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("ElderDetails.aspx");
        }

        private void displayVolunteerDropDownList()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("SELECT * FROM Volunteer", conn);

            SqlDataAdapter daVolunteer = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();

            daVolunteer.Fill(result, "VolunteerDetails");

            conn.Close();

            dd_Volunteer.DataSource = result.Tables["VolunteerDetails"];

            dd_Volunteer.DataTextField = "Name";

            dd_Volunteer.DataValueField = "VolunteerID";

            dd_Volunteer.DataBind();

            dd_Volunteer.Items.Insert(0, "--Select--");
        }
    }
}