using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace P2
{
    public class Admininstrator
    {
        public int requestId { get; set; }
        public int volunteerid { get; set; }
        public DateTime dateCreated { get; set; }

        //Volunteer Delete Request
        public int add()
        {
            string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand
                ("INSERT INTO Request (VolunteerID, DateCreated) " +
                "OUTPUT INSERTED.RequestID " +
                "VALUES (@VolunteerID, @DateCreated)", conn);

            cmd.Parameters.AddWithValue("@VolunteerID", volunteerid);
            cmd.Parameters.AddWithValue("@DateCreated", dateCreated);

            conn.Open();

            int id = (int)cmd.ExecuteScalar();

            conn.Close();

            return 0;
        }

        //Vendor Delete Request

        public int displayRequest(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
    ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Request R INNER JOIN Volunteer V ON R.VolunteerID = V.VolunteerID", conn);

            SqlDataAdapter daRequests = new SqlDataAdapter(cmd);

            conn.Open();
            daRequests.Fill(result, "RequestsList");

            conn.Close();

            return 0;
        }

        //Volunteer Delete
        public int delete()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd1 = new SqlCommand("UPDATE Elder SET VolunteerID = NULL WHERE VolunteerID = @selectedVolunteerID1", conn);
            cmd1.Parameters.AddWithValue("@selectedVolunteerID1", volunteerid);

            SqlCommand cmd2 = new SqlCommand("UPDATE Feedback SET VolunteerID = NULL WHERE VolunteerID = @selectedVolunteerID2", conn);
            cmd2.Parameters.AddWithValue("@selectedVolunteerID2", volunteerid);

            SqlCommand cmd3 = new SqlCommand("DELETE FROM Location WHERE VolunteerID = @selectedVolunteerID3", conn);
            cmd3.Parameters.AddWithValue("@selectedVolunteerID3", volunteerid);

            SqlCommand cmd4 = new SqlCommand("DELETE FROM Request WHERE VolunteerID = @selectedVolunteerID4", conn);
            cmd4.Parameters.AddWithValue("@selectedVolunteerID4", volunteerid);

            SqlCommand cmd5 = new SqlCommand("DELETE FROM Volunteer WHERE VolunteerID = @selectedVolunteerID5", conn);
            cmd5.Parameters.AddWithValue("@selectedVolunteerID5", volunteerid);

            conn.Open();

            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            cmd5.ExecuteNonQuery();

            conn.Close();

            return 0;
        }

        public int notdelete()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("DELETE FROM Request WHERE VolunteerID = @selectedVolunteerID", conn);
            cmd.Parameters.AddWithValue("@selectedVolunteerID", volunteerid);

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();

            return 0;
        }

        //Vendor Delete
    }
}