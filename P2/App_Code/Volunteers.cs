using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace P2
{
    public class Volunteers
    {
        public int VolunteerID { get; set; }
        public string Name { get; set; }
        public string EmailAddr { get; set; }
        public string Password { get; set; }
        public int ContactNo { get; set; }
        public DateTime DateJoin { get; set; }

        public string getLogin()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                ("SELECT * FROM Volunteer WHERE EmailAddr=@email AND Password=@password", conn);

            cmd.Parameters.AddWithValue("@email", EmailAddr);
            cmd.Parameters.AddWithValue("@password", Password);

            SqlDataAdapter daVolunteer = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();
            daVolunteer.Fill(result, "VolunteerLogin");
            conn.Close();

            if (result.Tables["VolunteerLogin"].Rows.Count == 1)
            {
                DataTable table = result.Tables["VolunteerLogin"];
                if (!DBNull.Value.Equals(table.Rows[0]["EmailAddr"]))
                    EmailAddr = (table.Rows[0]["EmailAddr"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["Password"].ToString()));

                return "Volunteer";
            }
            else
            {
                return "Nil";
            }
        }
    }
}