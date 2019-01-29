using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace P2
{
    public class Remark1
    {
        public int RemarkID { get; set; }
        public string RemarkFood { get; set; }
        public int CoordinatorID { get; set; }
        public int ElderID { get; set; }

        public int addRemark()
        {
            string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(strConn);

            //change coordinator 
            SqlCommand cmd = new SqlCommand("Insert INTO Remark (FoodRemark, CoordinatorID, ElderID) " +
                                            "OUTPUT INSERTED.RemarkID " +
                                            "VALUES(@Foodremark, @CoordinatorID, @ElderID)", conn);

            cmd.Parameters.AddWithValue("@Foodremark", RemarkFood);
            cmd.Parameters.AddWithValue("@CoordinatorID", CoordinatorID);
            cmd.Parameters.AddWithValue("@ElderID", ElderID);

            conn.Open();
            int id = (int)cmd.ExecuteScalar();

            conn.Close();
            return id;
        }
    }
}