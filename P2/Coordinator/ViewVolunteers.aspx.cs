using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace P2.Coordinator
{
    public partial class ViewVolunteers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            Coordinators objCoordinator = new Coordinators();

            objCoordinator.EmailAdd = Session["LoginID"].ToString();
            objCoordinator.getPass();
            objCoordinator.getId();

            int errorCode = objCoordinator.displayVolunteer(ref result);
            if (errorCode == 0)
            {
                gv_volunteer.DataSource = result.Tables["VolunteerDetails"];
                gv_volunteer.DataBind();
            }
        }
    }
}