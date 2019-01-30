using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace P2.Volunteer
{
    public partial class Remark_Volunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                displayRemark();
            }
        }

        private void displayRemark()
        {

            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT c.Name, E.Name, r.FoodRemark from Remark r INNER JOIN Coordinator c on r.COORDINATORID = c.COORDINATORID INNER JOIN Elder E ON R.ElderID = E.ElderID", conn);
            SqlDataAdapter daRemark = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();
            conn.Open();
            daRemark.Fill(result, "RemarkDetails");
            conn.Close();
            gv_remark.DataSource = result.Tables["RemarkDetails"];
            gv_remark.DataBind();
        }
    }
}