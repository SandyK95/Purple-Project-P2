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
                displayFooddetails();
            }
        }
            private void displayFooddetails()
            {
               
                string strConn = ConfigurationManager.ConnectionStrings
                    ["P2ConnectionString"].ToString();
               
                SqlConnection conn = new SqlConnection(strConn);         
                SqlCommand cmd = new SqlCommand("SELECT * FROM Elder ORDER BY ElderID ", conn);
                SqlDataAdapter daDetails = new SqlDataAdapter(cmd);        
                DataSet result = new DataSet();
                conn.Open();
                daDetails.Fill(result, "fooddetails");            
                conn.Close();  
                GV_ShowDetails.DataSource = result.Tables["fooddetails"];
                GV_ShowDetails.DataBind();
            }

        protected void Submit_ID_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                Elderlies objElder = new Elderlies();
                objElder.name = txt_Remark.Text;
                int id = objStaff.add();
                Response.Redirect("ConfirmAddStaff.aspx?name=" + txtName.Text + "&id=" + id.ToString());

        


            }
        }

    }
}
}