﻿using System;
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
                Volunteers objVolunteers = new Volunteers();
                Remarks objRemarks = new Remarks();

                lblCoordinatorEmail.Text = Session["LoginID"].ToString();
                objCoordinator.EmailAdd = lblCoordinatorEmail.Text;
                objCoordinator.Password = objCoordinator.getPass();
                objCoordinator.getDetails();

                lblCoordinatorName.Text = objCoordinator.Name;
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

                }

                else
                {
                    lblError.Text = "Message too short";
                }
            }
        }
    }
}