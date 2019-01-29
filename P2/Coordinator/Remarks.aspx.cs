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
    public partial class Remarks : System.Web.UI.Page
    {
        Coordinators objCoordinator = new Coordinators();
        Elderlies objElder = new Elderlies();
        Volunteers objVolunteers = new Volunteers();
        Remark1 objRemark = new Remark1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                displayElderDropDownList();

                lblCoordinatorEmail.Text = Session["LoginID"].ToString();
                objCoordinator.EmailAdd = lblCoordinatorEmail.Text;
                objCoordinator.Password = objCoordinator.getPass();
                objCoordinator.getDetails();

                lblCoordinatorName.Text = objCoordinator.Name;
                lblCoordinatorID.Text = objCoordinator.CoordinatorID;
            }


        }

        private void displayElderDropDownList()
        {
            string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Elder", conn);

            SqlDataAdapter daElder = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();

            conn.Open();

            daElder.Fill(result, "ElderDetails");

            conn.Close();

            ddlElders.DataSource = result.Tables["ElderDetails"];

            ddlElders.DataTextField = "Name";

            ddlElders.DataValueField = "ElderID";

            ddlElders.DataBind();

            ddlElders.Items.Insert(0, "--Select--");
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            
            if (Page.IsValid)
            {
                if (txtBox.Text.Length > 1)
                {
                    if (ddlElders.SelectedIndex != 0)
                    {
                        objRemark.ElderID = ddlElders.SelectedIndex;
                        objRemark.RemarkFood = txtBox.Text;
                        objRemark.CoordinatorID = Convert.ToInt32(lblCoordinatorID.Text);

                        int errorCode = objRemark.addRemark();
                        if (errorCode == 0)
                        {
                            lblError.Text = "Success";
                            lblError.ForeColor = System.Drawing.Color.Green;
                            lblError.Visible = true;
                            txtBox.Text = "";
                        }

                        else if (errorCode == -2)
                        {
                            lblError.Text = "Fail";
                            lblError.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }

                else
                {
                    lblError.Text = "The remarks field is required";
                    lblError.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}