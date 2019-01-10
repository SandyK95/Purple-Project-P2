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
            //if (!Page.IsPostBack)
            //{
            //    displayFooddetails();
            //}

            DataSet result = new DataSet();
            Elderlies objelderlies = new Elderlies();

            //objelderlies.EmailAdd = Session["LoginID"].ToString();
            //objelderlies.getPass();
            //objelderlies.getId();

            int errorCode = objelderlies.displayRemarks(ref result);
            if (errorCode == 0)
            {
                GV_ShowDetails.DataSource = result.Tables["ElderDetails"];
                GV_ShowDetails.DataBind();
            }
        }
        

        protected void Submit_ID_Click(object sender, EventArgs e)
        {


            Remarks objremarks = new Remarks();
            //
           
         

 

            
        }

    }

        
}