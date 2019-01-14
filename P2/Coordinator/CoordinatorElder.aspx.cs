using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace P2.Coordinator
{
    public partial class CoordinatorElder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet result = new DataSet();
            Elderlies objElder = new Elderlies();

            int errorCode = objElder.displayElderListStatusYes(ref result);
            if (errorCode == 0)
            {
                gvElderY.DataSource = result.Tables["ElderDetails"];
                gvElderY.DataBind();
            }

            int errorCode2 = objElder.displayElderListStatusNoWithRemarks(ref result);
            if (errorCode2 == 0)
            {
                gvElderN.DataSource = result.Tables["ElderDetails3"];
                gvElderN.DataBind();
            }

            int errorCode3 = objElder.displayElderListStatusP(ref result);
            if (errorCode3 == 0)
            {
                gvElderP.DataSource = result.Tables["ElderDetails2"];
                gvElderP.DataBind();
            }
        }
    }
}