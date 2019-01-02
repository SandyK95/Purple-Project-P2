using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace P2.Coordinator
{
    public partial class ElderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            Elderlies objElder = new Elderlies();

            int errorCode = objElder.getDetailsOnly(ref result);
            if (errorCode == 0)
            {
                gvElderDetails.DataSource = result.Tables["ElderDetails"];
                gvElderDetails.DataBind();
            }
        }
    }
}