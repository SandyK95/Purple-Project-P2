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
            int errorCode = objAdmin.displayCoordinator(ref result);
            if (errorCode == 0)
            {
                gv_Coordinators.DataSource = result.Tables["CoordinatorDetails"];
                gv_Coordinators.DataBind();
            }

            int errorCode1 = objAdmin.displayVendors(ref result);
            if (errorCode1 == 0)
            {
                gv_Vendors.DataSource = result.Tables["VendorDetails"];
                gv_Vendors.DataBind();
            }
        }
    }
}