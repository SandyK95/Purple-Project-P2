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
        public string VolunteerID { get; set; }
        public string Name { get; set; }
        public string EmailAddr { get; set; }
        public string Password { get; set; }
        public string Day { get; set; }
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

        public string getPass()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Volunteer WHERE EmailAddr=@email", conn);

            cmd.Parameters.AddWithValue("@email", EmailAddr);

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
                if (!DBNull.Value.Equals(table.Rows[0]["Password"]))
                    Password = (table.Rows[0]["Password"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["VolunteerID"]))
                    VolunteerID = (table.Rows[0]["VolunteerID"].ToString());

                return Password;
            }
            else
                return "Nil";
        }

        public string getId()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Volunteer WHERE EmailAddr=@email AND Password=@password", conn);

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
                if (!DBNull.Value.Equals(table.Rows[0]["Password"]))
                    Password = (table.Rows[0]["Password"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["VolunteerID"]))
                    VolunteerID = (table.Rows[0]["VolunteerID"].ToString());

                return VolunteerID;
            }
            else
                return "Nil";
        }

        public int displayElderListStatus(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Elder WHERE VolunteerID = @VolunteerID AND Status = 'N' ORDER BY ElderID", conn);

            cmd.Parameters.AddWithValue("@VolunteerID", VolunteerID);

            SqlDataAdapter daElders = new SqlDataAdapter(cmd);

            conn.Open();
            daElders.Fill(result, "ElderDetails2");

            conn.Close();

            return 0;
        }
    }
}