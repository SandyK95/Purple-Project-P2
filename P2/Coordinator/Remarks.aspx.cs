using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace P2.Coordinator
{
    public partial class Remarks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                DataSet result = new DataSet();
                string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();

                SqlConnection conn = new SqlConnection(strConn);

                SqlCommand cmd = new SqlCommand
                    ("SELECT * FROM Feedback", conn);

                SqlDataAdapter daRemarks = new SqlDataAdapter(cmd);

                conn.Open();

                daRemarks.Fill(result, "Remarks");

                conn.Close();

                gv_Remarks.DataSource = result.Tables["Remarks"];
                gv_Remarks.DataBind();

            }
        }
    }
}