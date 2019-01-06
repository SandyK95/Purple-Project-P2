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
        public string ContactNo { get; set; }
        public string DateJoin { get; set; }
        public string coordinatorID { get; set; }

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
            SqlCommand cmd = new SqlCommand("SELECT * FROM Elder WHERE VolunteerID = @VolunteerID AND Status = 'P' ORDER BY ElderID", conn);

            cmd.Parameters.AddWithValue("@VolunteerID", VolunteerID);

            SqlDataAdapter daElders = new SqlDataAdapter(cmd);

            conn.Open();
            daElders.Fill(result, "ElderDetails2");

            conn.Close();

            return 0;
        }

        public int getDetails()
        {
            string strConn = ConfigurationManager.ConnectionStrings
    ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                ("SELECT * FROM VOLUNTEER WHERE VolunteerID =@selectedVolunteerID", conn);
            cmd.Parameters.AddWithValue("@selectedVolunteerID", VolunteerID);
            SqlDataAdapter daVolunteer = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();

            conn.Open();
            daVolunteer.Fill(result, "VolunteerDetails");
            conn.Close();

            if (result.Tables["VolunteerDetails"].Rows.Count > 0)
            {
                DataTable table = result.Tables["VolunteerDetails"];
                if (!DBNull.Value.Equals(table.Rows[0]["Name"]))
                    Name = table.Rows[0]["Name"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["EmailAddr"]))
                    EmailAddr = table.Rows[0]["EmailAddr"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["Password"]))
                    Password = table.Rows[0]["Password"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["ContactNo"]))
                    ContactNo = table.Rows[0]["ContactNo"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["DateJoin"]))
                    DateJoin = table.Rows[0]["DateJoin"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["CoordinatorID"]))
                    coordinatorID = table.Rows[0]["CoordinatorID"].ToString();
                if (DBNull.Value.Equals(table.Rows[0]["CoordinatorID"]))
                    coordinatorID = table.Rows[0]["CoordinatorID"].ToString();
                return 0;
            }
            else
                return -2;
        }

        public int getPrepare(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT E.ElderID, E.Name, E.Prepare, L.NameLocation from Elder E INNER JOIN Location " +
                "L ON E.ElderID = L.ElderID WHERE " +
                "E.VolunteerID =@VolunteerID AND E.Prepare = 'Completed' AND E.Status = 'P' ORDER BY L.NameLocation", conn);

            cmd.Parameters.AddWithValue("@VolunteerID", VolunteerID);

            SqlDataAdapter daElder = new SqlDataAdapter(cmd);

            conn.Open();
            daElder.Fill(result, "ElderDetails");
            conn.Close();

            return 0;
        }

        public int getDetailsOnly(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
    ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Volunteer", conn);

            SqlDataAdapter daElders = new SqlDataAdapter(cmd);

            conn.Open();
            daElders.Fill(result, "VolunteerDetails");

            conn.Close();

            return 0;
        }

        public int update()
        {
            //Read connection string "NPBookConnectionString" from web.config file
            string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();

            //Instantiate a SqlCommand object with the Connection String read
            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("UPDATE Volunteer SET CoordinatorID = @CoordinatorID WHERE VolunteerID = @selectedVolunteerID", conn);

            if (coordinatorID != null)
            {
                cmd.Parameters.AddWithValue("@CoordinatorID", coordinatorID);
            }
            else
                cmd.Parameters.AddWithValue("@CoordinatorID", DBNull.Value);

            cmd.Parameters.AddWithValue("@selectedVolunteerID", VolunteerID);

            conn.Open();

            int count = cmd.ExecuteNonQuery();

            conn.Close();

            if (count > 0)
                return 0;
            else
                return -2;
        }
        
    }
}