using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace P2
{
    public class Coordinators
    {
        public string CoordinatorID { get; set; }
        public string Name { get; set; }
        public string EmailAdd { get; set; }
        public string Password { get; set; }

        public string getLogin()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand
                ("SELECT * FROM Coordinator WHERE EmailAddr=@email AND Password=@password", conn);

            cmd.Parameters.AddWithValue("@email", EmailAdd);
            cmd.Parameters.AddWithValue("@password", Password);

            SqlDataAdapter daCoordinator = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();
            daCoordinator.Fill(result, "CoordinatorLogin");
            conn.Close();

            if (result.Tables["CoordinatorLogin"].Rows.Count == 1)
            {
                DataTable table = result.Tables["CoordinatorLogin"];
                if (!DBNull.Value.Equals(table.Rows[0]["EmailAddr"]))
                    EmailAdd = (table.Rows[0]["EmailAddr"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["Password"]))
                    Password = (table.Rows[0]["Password"].ToString());

                return "Coordinator";
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
            SqlCommand cmd = new SqlCommand("SELECT * FROM Coordinator WHERE EmailAddr=@email", conn);

            cmd.Parameters.AddWithValue("@email", EmailAdd);

            SqlDataAdapter daVolunteer = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();

            daVolunteer.Fill(result, "CoordinatorLogin");
            conn.Close();

            if (result.Tables["CoordinatorLogin"].Rows.Count == 1)
            {
                DataTable table = result.Tables["CoordinatorLogin"];
                if (!DBNull.Value.Equals(table.Rows[0]["EmailAddr"]))
                    EmailAdd = (table.Rows[0]["EmailAddr"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["Password"]))
                    Password = (table.Rows[0]["Password"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["CoordinatorID"]))
                    CoordinatorID = (table.Rows[0]["CoordinatorID"].ToString());

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
            SqlCommand cmd = new SqlCommand("SELECT * FROM Coordinator WHERE EmailAddr=@email AND Password=@password", conn);

            cmd.Parameters.AddWithValue("@email", EmailAdd);
            cmd.Parameters.AddWithValue("@password", Password);

            SqlDataAdapter daVolunteer = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();

            daVolunteer.Fill(result, "CoordinatorLogin");
            conn.Close();

            if (result.Tables["CoordinatorLogin"].Rows.Count == 1)
            {
                DataTable table = result.Tables["CoordinatorLogin"];
                if (!DBNull.Value.Equals(table.Rows[0]["EmailAddr"]))
                    EmailAdd = (table.Rows[0]["EmailAddr"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["Password"]))
                    Password = (table.Rows[0]["Password"].ToString());
                if (!DBNull.Value.Equals(table.Rows[0]["CoordinatorID"]))
                    CoordinatorID = (table.Rows[0]["CoordinatorID"].ToString());

                return CoordinatorID;
            }
            else
                return "Nil";
        }

        public int displayVolunteer(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
    ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT VolunteerID, Name, ContactNo FROM Volunteer WHERE CoordinatorID =@coordinatorID", conn);

            cmd.Parameters.AddWithValue("@coordinatorID", CoordinatorID);

            SqlDataAdapter daVolunteers = new SqlDataAdapter(cmd);

            conn.Open();
            daVolunteers.Fill(result, "VolunteerDetails");

            conn.Close();

            return 0;
        }
    }
}