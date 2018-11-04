using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace P2.Volunteer
{
    public partial class ViewElder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            Elderlies objElder = new Elderlies();
            Volunteers objVolunteer = new Volunteers();

            objVolunteer.EmailAddr = Session["LoginID"].ToString();
            objVolunteer.getPass();
            objVolunteer.getId();

            int errorCode2 = objVolunteer.displayElderListStatus(ref result);
            if (errorCode2 == 0)
            {
                gvElderN.DataSource = result.Tables["ElderDetails2"];
                gvElderN.DataBind();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSearchElderInput.Text = "";
            gvElderN.Visible = true;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (searchElders() == 1)
            {
                gvElderN.Visible = true;
            }
            else
            {
                gvElderN.Visible = false;
                lblSearchedElder.Text = "Invaild Search";
                lblSearchedElder.Visible = true;
                lblSearchedElder.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected int searchElders()
        {
            string searchColumn = "";
            string searchValue = "";
            string sqlCommand = "";

            if (rdoSerial.Checked)
            {
                searchColumn = "SerialNo";
                searchValue = txtSearchElderInput.Text + "%";
                DisplayNameOnLabel();
                sqlCommand = " LIKE";
                if (searchValue == "%%")
                {
                    return 0;
                }
            }

            else
            {
                searchColumn = "Name";
                searchValue = txtSearchElderInput.Text + "%";
                sqlCommand = " LIKE";

                if (searchValue == "%%")
                {
                    return 0;
                }
            }

            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("SELECT * FROM Elder WHERE " + searchColumn + sqlCommand + " @value", conn);

            cmd.Parameters.AddWithValue("@value", searchValue);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            try
            {
                conn.Open();
                da.Fill(result, "ElderDetails");
                conn.Close();

                gvElderN.DataSource = result.Tables["ElderDetails"];
                gvElderN.DataBind();

                if (result.Tables["ElderDetails"].Rows.Count == 0)
                    return 0;
                else
                    return 1;
            }
            catch
            {
                return 0;
            }
        }

        protected int DisplayNameOnLabel()
        {
            string searchColumn = "";
            string searchValue = "";

            searchColumn = "Name";
            searchValue = txtSearchElderInput.Text;

            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("SELECT * FROM Elder WHERE " + searchColumn + " =@value", conn);

            cmd.Parameters.AddWithValue("@value", txtSearchElderInput.Text);

            try
            {
                conn.Open();
                conn.Close();

                return 1;
            }
            catch
            {
                return 0;
            }
        }
    }
}