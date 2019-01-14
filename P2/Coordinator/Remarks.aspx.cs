using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace P2.Coordinator
{
    public partial class Remarks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////Test
            //DataSet result = new DataSet();
            //Elderlies objElder = new Elderlies();

            //int errorCode = objElder.displayRemarks(ref result);
            //if (errorCode == 0)
            //{
            //    gv.DataSource = result.Tables["Remarks"];
            //    GV_ShowDetails.DataBind();
            //}

        }
        protected void Submit_ID_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                //Elderlies objElder = new Elderlies();
                //objElder.FullName = txt_Remark.Text;
                ////int id = objStaff.add();
                ////Response.Redirect("ConfirmAddStaff.aspx?name=" + txtName.Text + "&id=" + id.ToString());
            }
        }

    }
}