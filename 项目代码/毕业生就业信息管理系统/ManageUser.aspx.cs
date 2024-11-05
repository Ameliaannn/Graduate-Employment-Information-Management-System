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
    public partial class ManageUser : System.Web.UI.Page
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
            this.GridView1.DataSource = Business.AdminBusiness.SelectViewLogin();
            this.GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = this.GridView1.SelectedIndex;
            string id = this.GridView1.Rows[index].Cells[0].Text.Trim();
            Response.Redirect("~/Edituser.aspx?id=" + id);
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            this.LoadGridView();
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddNewuser.aspx");
        }
    }
}