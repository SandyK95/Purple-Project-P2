using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace P2.Admin
{
    public partial class UpdateVolunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            Volunteers objVolunteer = new Volunteers();

            int errorCode = objVolunteer.getDetailsOnly(ref result);
            if (errorCode == 0)
            {
                gvVolunteerDetails.DataSource = result.Tables["VolunteerDetails"];
                gvVolunteerDetails.DataBind();

            }
        }
    }
}