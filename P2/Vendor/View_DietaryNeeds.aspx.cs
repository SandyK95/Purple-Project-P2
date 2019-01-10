using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace P2.Vendor
{
    public partial class View_DietaryNeeds : System.Web.UI.Page
    {
        Elderlies objElder = new Elderlies();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DisplayElderList();
                displayData();
            }

        }

        public void displayData()
        {
            //Read connection string "P2ConnectionString" from Web.config file
            string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();

            //Institiate a SQLConnection object with the Connection string read
            SqlConnection conn = new SqlConnection(strConn);

            //Instantiate a Sqlcommand object,supply it with the SQL statement
            //SELECT that operates against the database , and the connection object
            //used for connecting to the database
            SqlCommand cmd = new SqlCommand("SELECT count(*) as Count,Dietary from elder group by Dietary", conn);

            //Institiate A dataadapter Object and pass the sqlCommand Object
            //Create as parameter
            SqlDataAdapter daEldershowData = new SqlDataAdapter(cmd);

            //Create a DataSet object to contain the records retreived from database
            DataSet result = new DataSet();

            //A connection must be opened before any operations made
            conn.Open();

            //Use DataApater to fetch data  to a table "ElderDetails" in DataSet
            //DataSet 'Result' will store the result of the SELECT operation.
            daEldershowData.Fill(result, "ElderDetails");

            //A connection should always be closed,whether error occurs or not
            conn.Close();

            //Specify GridView to get data from table "ElderDetails"
            //in DataSet "result"
            gv_ShowData.DataSource = result.Tables["ElderDetails"];

            //Display the list of data in GridView
            gv_ShowData.DataBind();
        }


        public void DisplayElderList()
        {
            //Read connection string "P2ConnectionString" from Web.config file
            string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();

            //Institiate a SQLConnection object with the Connection string read
            SqlConnection conn = new SqlConnection(strConn);

            //Instantiate a Sqlcommand object,supply it with the SQL statement
            //SELECT that operates against the database , and the connection object
            //used for connecting to the database
            SqlCommand cmd = new SqlCommand("SELECT * From Elder ORDER BY ElderID", conn);

            //Institiate A dataadapter Object and pass the sqlCommand Object
            //Create as parameter
            SqlDataAdapter daElder = new SqlDataAdapter(cmd);

            //Create a DataSet object to contain the records retreived from database
            DataSet result = new DataSet();

            //A connection must be opened before any operations made
            conn.Open();

            //Use DataApater to fetch data  to a table "ElderDetails" in DataSet
            //DataSet 'Result' will store the result of the SELECT operation.
            daElder.Fill(result, "ElderDetails");

            //A connection should always be closed,whether error occurs or not
            conn.Close();

            //Specify GridView to get data from table "ElderDetails"
            //in DataSet "result"
            gv_Elders.DataSource = result.Tables["ElderDetails"];

            //Display the list of data in GridView
            gv_Elders.DataBind();
        }

        protected void gv_ShowData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int count = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = gv_ShowData.Rows[count];

                //lblTest.Text = Convert.ToString(selectedRow);
                for (int i = 0; i < gv_ShowData.Rows.Count; i++)
                {
                    if (gv_ShowData.SelectedIndex == i)
                    {
                        string value = gv_ShowData.Rows[i].Cells[2].Text;
                        objElder.Dietary = value;

                        int errorCode = objElder.updateStatus();
                        if (errorCode == 0)
                        {
                            lblTest.Text = "Success";
                        }
                        else if (errorCode == -2)
                        {
                            lblTest.Text = "Unable to save record";
                            lblTest.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }

                //to get string from gridview

            }
        }
    }
}