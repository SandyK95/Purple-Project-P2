using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace P2
{
    public class Vendor1
    {
        public int VendorID { get; set; }
        public string Name { get; set; }
        public string EmailAdd { get; set; }
        public string Password { get; set; }

        public string getLogin()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                ("SELECT * FROM Vendor WHERE EmailAddr=@email AND Password=@password", conn);

            cmd.Parameters.AddWithValue("@email", EmailAdd);
            cmd.Parameters.AddWithValue("@password", Password);

            SqlDataAdapter daVendor = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();
            daVendor.Fill(result, "VendorLogin");
            conn.Close();

            if (result.Tables["VendorLogin"].Rows.Count == 1)
            {
                DataTable table = result.Tables["VendorLogin"];
                if (!DBNull.Value.Equals(table.Rows[0]["EmailAddr"]))
                    EmailAdd = (table.Rows[0]["EmailAddr"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["Password"]))
                    Password = (table.Rows[0]["Password"].ToString());

                return "Vendor";
            }
            else
            {
                return "Nil";
            }
        }
    }
}