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
    public partial class ViewElder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            Elderlies objElder = new Elderlies();

            int errorCode2 = objElder.displayElderListStatusNo(ref result);
            if (errorCode2 == 0)
            {
                gvElderN.DataSource = result.Tables["ElderDetails2"];
                gvElderN.DataBind();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSearchElderInput.Text = "";
            gvElderN.Visible = true;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}