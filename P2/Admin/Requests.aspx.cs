using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace P2.Admin
{
    public partial class Requests : System.Web.UI.Page
    {
        Admininstrator objAdmin = new Admininstrator();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            int errorCode = objAdmin.displayRequest(ref result);
            if (errorCode == 0)
            {
                gv_RequestLists_Volunteer.DataSource = result.Tables["RequestsList"];
                gv_RequestLists_Volunteer.DataBind();
            }

            //Vendor Request Lists
        }
    }
}