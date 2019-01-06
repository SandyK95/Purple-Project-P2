using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace P2.Admin
{
    public partial class VolunteerUpdate : System.Web.UI.Page
    {
        Volunteers objVolunteer = new Volunteers();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                displayCoordinatorDropDownList();
                if (Request.QueryString["volunteerid"] != null)
                {
                    objVolunteer.VolunteerID = Request.QueryString["volunteerid"];
                    int errorCode = objVolunteer.getDetails();

                    if (errorCode == 0)
                    {
                        lblName.Text = objVolunteer.Name;
                        dd_Coordinator.SelectedValue = objVolunteer.coordinatorID.ToString();
                    }
                    else if (errorCode == -2)
                    {
                        lblMessage.Text = "Unable to retrieve Volunteer details for ID " + objVolunteer.VolunteerID;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objVolunteer.VolunteerID = Request.QueryString["volunteerid"];

                if (dd_Coordinator.SelectedIndex != 0)
                {
                    objVolunteer.coordinatorID = dd_Coordinator.SelectedValue;
                }

                int errorCode = objVolunteer.update();
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
            Response.Redirect("VolunteerDetails.aspx");
        }

        private void displayCoordinatorDropDownList()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("SELECT * FROM Coordinator", conn);

            SqlDataAdapter daCoordinator = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();

            daCoordinator.Fill(result, "CoordinatorDetails");

            conn.Close();

            dd_Coordinator.DataSource = result.Tables["CoordinatorDetails"];

            dd_Coordinator.DataTextField = "Name";

            dd_Coordinator.DataValueField = "CoordinatorID";

            dd_Coordinator.DataBind();

            dd_Coordinator.Items.Insert(0, "--Select--");
        }
    }
}