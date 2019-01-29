using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace P2.Coordinator
{
    public partial class Remarks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                displayElderDropDownList();

                Coordinators objCoordinator = new Coordinators();
                Elderlies objElder = new Elderlies();
                Remarks objRemarks = new Remarks();

                objCoordinator.EmailAdd = Session["LoginID"].ToString();

                objCoordinator.Password = objCoordinator.getPass();
                objCoordinator.getId();

                lblCoordinatorEmail.Text = objCoordinator.EmailAdd;
                lblCoordinatorName.Text = objCoordinator.Name;

                ddlElders.SelectedValue = objElder.ElderID.ToString();
            }


            ////Test
            //DataSet result = new DataSet();
            //Elderlies objElder = new Elderlies();

            //int errorCode = objElder.displayRemarks(ref result);
            //if (errorCode == 0)
            //{
            //    gv.DataSource = result.Tables["Remarks"];
            //    GV_ShowDetails.DataBind();
            //}

        }
        protected void Submit_ID_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                //Elderlies objElder = new Elderlies();
                //objElder.FullName = txt_Remark.Text;
                ////int id = objStaff.add();
                ////Response.Redirect("ConfirmAddStaff.aspx?name=" + txtName.Text + "&id=" + id.ToString());
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

    }
}