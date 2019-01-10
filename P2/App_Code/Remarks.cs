using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace P2.App_Code
{
    public class Remarks
    {
        public int REMarkID { get; set; }
        public string remarkFood { get; set; }

        public int VendorID { get; set; }
        public int ElderID { get; set; }

        public int addRemark()
        {
            string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("Insert INTO Remark (FoodRemark) " +
                                            "OUTPUT INSERTED.RemarkID " +
                                            "VALUES(@Foodremark)", conn);

            cmd.Parameters.AddWithValue("@Foodremark", remarkFood);

            conn.Open();
            int id = (int)cmd.ExecuteScalar();

            conn.Close();
            return id;


        }


    }
}