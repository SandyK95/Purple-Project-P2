using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace P2
{
    public class Elderlies
    {
        public int ElderID { get; set; }
        public string SerialNo { get; set; }
        public string FullName { get; set; }
        public string Photo { get; set; }
        public string Address { get; set; }
        public int Contact { get; set; }
        public string Dietary { get; set; }
        public string HealthCondition { get; set; }
        public string status { get; set; }

        public int displayElderListStatusYes(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT SerialNo, Name, ElderAddress, ContactNo, Dietary, " +
                "HealthCondition FROM Elder WHERE Status = 'Y' ORDER BY ElderID", conn);

            SqlDataAdapter daElders = new SqlDataAdapter(cmd);

            conn.Open();
            daElders.Fill(result, "ElderDetails");

            conn.Close();

            return 0;
        }

        public int displayElderListStatusNo(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT SerialNo, Name, ElderAddress, ContactNo, Dietary, " +
                "HealthCondition FROM Elder WHERE Status = 'N' ORDER BY ElderID", conn);

            SqlDataAdapter daElders = new SqlDataAdapter(cmd);

            conn.Open();
            daElders.Fill(result, "ElderDetails2");

            conn.Close();

            return 0;
        }
    }
}