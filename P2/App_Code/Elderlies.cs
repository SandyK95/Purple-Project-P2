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
        public string ElderID { get; set; }
        public string SerialNo { get; set; }
        public string FullName { get; set; }
        public string Photo { get; set; }
        public string Address { get; set; }
        public string Contact { get; set; }
        public string Dietary { get; set; }
        public string HealthCondition { get; set; }
        public string Meal { get; set; }
        public string Prepare { get; set; }
        public string status { get; set; }
        public string volunteer { get; set; }
        public string Timing { get; set; }

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

        public int displayElderListStatusP(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT SerialNo, Name, ElderAddress, ContactNo, Dietary, " +
                "HealthCondition, Timing FROM Elder WHERE Status = 'P' ORDER BY ElderID", conn);

            SqlDataAdapter daElders = new SqlDataAdapter(cmd);

            conn.Open();
            daElders.Fill(result, "ElderDetails2");

            conn.Close();

            return 0;
        }

        public int displayElderListStatusNoWithRemarks(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
    ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("SELECT E.SerialNo, E.Name, E.ElderAddress, E.ContactNo, E.Dietary, " +
                "E.HealthCondition, F.Feedback FROM Elder E INNER JOIN Feedback F ON E.ElderID = F.ElderID WHERE Status = 'N'", conn);

            SqlDataAdapter daElders = new SqlDataAdapter(cmd);

            conn.Open();
            daElders.Fill(result, "ElderDetails3");

            conn.Close();

            return 0;
        }

        public int displayRemarks(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
    ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("SELECT * FROM Remark", conn);

            SqlDataAdapter daRemarks = new SqlDataAdapter(cmd);

            conn.Open();
            daRemarks.Fill(result, "Remarks");

            conn.Close();

            return 0;
        }

        public int getDetailsOnly(ref DataSet result)
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Elder", conn);

            SqlDataAdapter daElders = new SqlDataAdapter(cmd);

            conn.Open();
            daElders.Fill(result, "ElderDetails");

            conn.Close();

            return 0;
        }

        public int getDetails()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Elder WHERE ElderID = @selectedElderID", conn);

            cmd.Parameters.AddWithValue("@selectedElderID", ElderID);

            SqlDataAdapter daElder = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();
            daElder.Fill(result, "ElderDetails");
            conn.Close();

            if (result.Tables["ElderDetails"].Rows.Count > 0)
            {
                DataTable table = result.Tables["ElderDetails"];
                if (!DBNull.Value.Equals(table.Rows[0]["SerialNo"]))
                    SerialNo = table.Rows[0]["SerialNo"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["Name"]))
                    FullName = table.Rows[0]["Name"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["ElderAddress"]))
                    Address = table.Rows[0]["ElderAddress"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["ContactNo"]))
                    Contact = table.Rows[0]["ContactNo"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["Dietary"]))
                    Dietary = table.Rows[0]["Dietary"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["HealthCondition"]))
                    HealthCondition = table.Rows[0]["HealthCondition"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["Meal"]))
                    Meal = table.Rows[0]["Meal"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["Prepare"]))
                    Prepare = table.Rows[0]["Prepare"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["VolunteerID"]))
                    volunteer = table.Rows[0]["VolunteerID"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["VolunteerID"]))
                    volunteer = table.Rows[0]["VolunteerID"].ToString();
                if (!DBNull.Value.Equals(table.Rows[0]["TIMING"]))
                    Timing = table.Rows[0]["TIMING"].ToString();

                return 0;
            }
            else
                return -2;
        }

        public int update()
        {
            string strConn = ConfigurationManager.ConnectionStrings["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("UPDATE Elder SET Prepare=@prepare WHERE ElderID=@selectedElderID", conn);

            cmd.Parameters.AddWithValue("@prepare", Prepare);

            cmd.Parameters.AddWithValue("@selectedElderID", ElderID);

            conn.Open();

            int count = cmd.ExecuteNonQuery();

            conn.Close();

            if (count > 0) // at least 1 row updated
                return 0; //update successfully
            else
                return -2;
        }

        public string getStatus()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT Status from Elder WHERE ElderID =@selectedElderID", conn);

            cmd.Parameters.AddWithValue("@selectedElderID", ElderID);

            SqlDataAdapter daElder = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();
            daElder.Fill(result, "ElderDetails");
            DataTable table = result.Tables["ElderDetails"];
            if (!DBNull.Value.Equals(table.Rows[0]["Status"]))
                status = (table.Rows[0]["Status"].ToString());
            conn.Close();

            return status;
        }

        public string setSuccess()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("UPDATE Elder SET Status = 'Y' WHERE ElderID =@elderID", conn);

            cmd.Parameters.AddWithValue("@elderID", ElderID);

            conn.Open();
            int count = cmd.ExecuteNonQuery();
            conn.Close();

            if (count > 0)
                return "Successful!";
            else
                return "Unsuccessful!";
        }

        public string setUnsuccess()
        {
            string strConn = ConfigurationManager.ConnectionStrings
                ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("UPDATE Elder SET Status = 'N' WHERE ElderID =@elderID", conn);

            cmd.Parameters.AddWithValue("@elderID", ElderID);

            conn.Open();
            int count = cmd.ExecuteNonQuery();
            conn.Close();

            if (count > 0)
                return "Successful!";
            else
                return "Unsuccessful!";
        }

        public int updateVol()
        {
            string strConn = ConfigurationManager.ConnectionStrings
    ["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand
                ("UPDATE Elder SET VolunteerID = @volunteerid WHERE ElderID = @selectedElderID", conn);

            if (volunteer != null)
                cmd.Parameters.AddWithValue("@volunteerid", volunteer);
            else
                cmd.Parameters.AddWithValue("@volunteerid", DBNull.Value);

            cmd.Parameters.AddWithValue("@selectedElderID", ElderID);

            conn.Open();

            int count = cmd.ExecuteNonQuery();

            conn.Close();

            if (count > 0)
                return 0;
            else
                return -2;
        }

        public int updateStatus()
        {
            string strConn = ConfigurationManager.ConnectionStrings
["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("UPDATE Elder SET Prepare = 'Completed' WHERE Dietary = @selectedDietary AND Prepare = 'Still Progressing'", conn);

            cmd.Parameters.AddWithValue("@selectedDietary", Dietary);

            conn.Open();

            int count = cmd.ExecuteNonQuery();
            conn.Close();

            if (count > 0)
            {
                return 0;
            }

            else
                return -2;
        }

        public int updateElderDetails()
        {
            string strConn = ConfigurationManager.ConnectionStrings
["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("UPDATE Elder SET Name=@name, ElderAddress=@address, " +
                "ContactNo=@contactno, Dietary=@dietary, HealthCondition=@healthcondition WHERE ElderID = @selectedElderID", conn);

            cmd.Parameters.AddWithValue("@name", FullName);
            cmd.Parameters.AddWithValue("@address", Address);
            cmd.Parameters.AddWithValue("@contactno", Contact);
            cmd.Parameters.AddWithValue("@dietary", Dietary);
            cmd.Parameters.AddWithValue("@healthcondition", HealthCondition);
            cmd.Parameters.AddWithValue("selectedElderID", ElderID);

            conn.Open();
            int count = cmd.ExecuteNonQuery();
            conn.Close();
            if (count > 0)
                return 0;
            else
                return -2;
        }

        public int delete()
        {
            string strConn = ConfigurationManager.ConnectionStrings
["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd1 = new SqlCommand("DELETE FROM Remark WHERE ElderID = @selectedElderID1",conn);//delete
            cmd1.Parameters.AddWithValue("@selectedElderID1", ElderID);

            SqlCommand cmd2 = new SqlCommand("DELETE FROM Location WHERE ElderID = @selectedElderID2",conn);//Location delete
            cmd2.Parameters.AddWithValue("@selectedElderID2", ElderID);

            SqlCommand cmd3 = new SqlCommand(
                "DELETE FROM Feedback WHERE ElderID = @selectedElderID3",conn);//FEEDBACK delete
            cmd3.Parameters.AddWithValue("@selectedElderID3", ElderID);

            SqlCommand cmd4 = new SqlCommand(
                "DELETE FROM Elder WHERE ElderID = @selectedElderID4", conn);
            cmd4.Parameters.AddWithValue("@selectedElderID4", ElderID);

            conn.Open();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();

            conn.Close();

            return 0;
        }

        public string getMeal()
        {
            string strConn = ConfigurationManager.ConnectionStrings
["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("SELECT Meal FROM Elder WHERE ElderID =@selectedElderID",conn);

            cmd.Parameters.AddWithValue("@selectedElderID", ElderID);

            SqlDataAdapter daElder = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();

            daElder.Fill(result, "ElderDetails");
            DataTable table = result.Tables["ElderDetails"];
            if (!DBNull.Value.Equals(table.Rows[0]["Meal"]))
                Meal = (table.Rows[0]["Meal"].ToString());
            conn.Close();

            return Meal;
        }

        public string setDinner()
        {
            string strConn = ConfigurationManager.ConnectionStrings
["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("Update Elder Set Meal = 'Dinner', Timing = '18:00 - 19:00' Where ElderID = @elderID", conn);

            cmd.Parameters.AddWithValue("@elderID", ElderID);

            conn.Open();

            int count = cmd.ExecuteNonQuery();
            conn.Close();
            if (count > 0)
                return "Successful Update Meal Status with correct Timing!";
            else
                return"Unsuccessful";
        }

        public string setLunch()
        {
            string strConn = ConfigurationManager.ConnectionStrings
["P2ConnectionString"].ToString();

            SqlConnection conn = new SqlConnection(strConn);

            SqlCommand cmd = new SqlCommand("Update Elder Set Meal = 'Lunch', Timing = '12:00 - 13:00' Where ElderID = @elderID", conn);

            cmd.Parameters.AddWithValue("@elderID", ElderID);

            conn.Open();

            int count = cmd.ExecuteNonQuery();
            conn.Close();

            if (count > 0)
                return "Successful Update Meal Status with correct Timing!";
            else
                return "Unsuccessful";
        }

    }
}