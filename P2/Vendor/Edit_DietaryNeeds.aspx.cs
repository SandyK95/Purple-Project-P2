using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace P2.Vendor
{
    public partial class Edit_DietaryNeeds : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                displayBranchDropDownList();



                if (Request.QueryString["elderid"] != null)
                {
                    //Create a new Staff Object
                    Elderlies objElder = new Elderlies();

                    //Read  ID from query string
                    objElder.ElderID = (Request.QueryString["elderid"]);

                    //Load staff information to controls
                    int errorCode = objElder.getDetails();
                    if (errorCode == 0)
                    {
                        lblName.Text = objElder.FullName;
                        lblSerialNo.Text = objElder.SerialNo;

                        dd_Prepare.SelectedValue = objElder.Prepare.ToString();
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

                if (Page.IsValid)
                {
                    Elderlies objelder = new Elderlies();

                    //Read Staff ID from query string 
                    objelder.ElderID = Request.QueryString["elderID"];


                    //Get the selected branch Number in Drop-down list 
                    if (dd_Prepare.SelectedIndex == 0)
                    {
                        objelder.Prepare = "Completed";
                    }
                    else
                    {
                        objelder.Prepare = "Still Progressing";
                    }


                    int errorCode = objelder.update();

                    if (errorCode == 0)
                    {
                        lblMessage.Text = "Elder record has been updated successfully";
                    }
                    else if (errorCode == -2)
                    {
                        lblMessage.Text = "Unable to save record as elder is not found";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }

                }


            }

            private void displayBranchDropDownList()
            {
                //Read connection string "NPBookConnectionString" from web.config file.
                string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();

                //Create a Sqlconnection object with the Connection String read.
                SqlConnection conn = new SqlConnection(strConn);

                //Create a SqlCommand object, with a SQL statement to retrieve all
                //attributes of a branch, and a connection object to open the database
                SqlCommand cmd = new SqlCommand("SELECT * FROM Elder", conn);

                //Create a DataAdapter object
                SqlDataAdapter daBranch = new SqlDataAdapter(cmd);

                //Create Dataset object
                DataSet result = new DataSet();

                //Open a database connection
                conn.Open();
                //use DataAdapter to fetch data to a table "ElderDetails" in DataSet
                daBranch.Fill(result, "ElderDetails");
                //close database connection 
                conn.Close();

                //Specify the dropdown list to get data from the dataset
                dd_Prepare.DataSource = result.Tables["ElderDetails"];

                //Specify the Text property of dropdownlist
                dd_Prepare.DataTextField = "Prepare";

                //Specify the Text property of dropdownlist
                //dd_Prepare.DataValueField = "BranchNo";

                //Load Branch information to the drop-down list
                dd_Prepare.DataBind();

                //Insert prompt for the dropdownList at the first position of the list
                dd_Prepare.Items.Insert(0, "--Select--");
            }

            protected void btn_Back_Click(object sender, EventArgs e)
            {
                Response.Redirect("/Vendor/View_DietaryNeeds.aspx");
            }
        
    }
}