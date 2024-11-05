using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;
using System.Data.SqlClient;
using Entity;
using Business;

namespace 毕业生就业信息管理系统
{
    public partial class resycle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LoadGridView();
            }
        }
        private void LoadGridView()
        {

            this.GridView1.DataSource = Business.AdminBusiness.SelectViewdelete();
            this.GridView1.DataBind();
        }
    }
}