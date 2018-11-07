using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace P2.Volunteer
{
    public partial class VolunteerMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            Elderlies objElder = new Elderlies();
            Volunteers objVolunteer = new Volunteers();

            objVolunteer.EmailAddr = Session["LoginID"].ToString();
            objVolunteer.getPass();
            objVolunteer.getId();

            int errorCode = objVolunteer.getPrepare(ref result);
            if (errorCode == 0)
            {
                gvElderPrepare.DataSource = result.Tables["ElderDetails"];
                gvElderPrepare.DataBind();
            }
           
        }
    }
}

