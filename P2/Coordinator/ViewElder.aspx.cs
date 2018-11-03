using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2.Coordinator
{
    public partial class ViewElder : System.Web.UI.Page
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
       
            int errorCode2 = objElder.displayElderListStatusNo(ref result);
            if (errorCode2 == 0)
            {
                gvElderN.DataSource = result.Tables["ElderDetails2"];
                gvElderN.DataBind();
            }
        }
    }
}