using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace P2
{
    public partial class VendorMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                DisplayElderList();
            }
            
        }

        public void DisplayElderList()
        {
            //Read connection string "NPBookConnectionString" from Web.config file
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
           
            //Specify GridView to get data from table "EldersDetails"
            //in DataSet "result"
            

            //Display the list of data in GridView
            //gvStaff.DataBind();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon(); //deletes all user data stored in the session
            Response.Redirect("../Home/HomePageMain.aspx"); //redirect to start page
        }
    }
}