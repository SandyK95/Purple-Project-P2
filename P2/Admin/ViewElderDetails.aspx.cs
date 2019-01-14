using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace P2.Admin
{
    public partial class ViewElderDetails : System.Web.UI.Page
    {
        Elderlies objElderlies = new Elderlies();
        DataSet result = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            int errorCode = objElderlies.getDetailsOnly(ref result);
            if (errorCode == 0)
            {
                gv_Elder.DataSource = result.Tables["ElderDetails"];
                gv_Elder.DataBind();
            }
        }
    }
}