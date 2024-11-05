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
    public partial class AdminEditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["teacher"] == null)
            //{
            //    Response.Write("<script>alert('请先登录！');parent.window.location.href='Login.aspx'</script>");
            //    return;
            //}
            if (!IsPostBack)
            {
                this.LoadGridView();
            }
        }
        private void LoadGridView()
        {

            this.GridView1.DataSource = Business.AdminBusiness.SelectViewStudent2();
            this.GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = this.GridView1.SelectedIndex;
            string sid = this.GridView1.Rows[index].Cells[0].Text.Trim();
            Response.Redirect("~/StudentInfoWebPage.aspx?sid=" + sid);
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            this.LoadGridView();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {           
           OutPut("attachment;filename=out.xls", "application/ms-excel");
        }
        //网上找的导出表格
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        private void OutPut(string fileType, string strType)
        {
                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "GB2312";
                Response.AppendHeader("Content-Disposition", fileType);
                Response.ContentType = strType;
                this.EnableViewState = false;
                System.IO.StringWriter swOut = new System.IO.StringWriter();
                HtmlTextWriter hTw = new HtmlTextWriter(swOut);
                this.GridView1.RenderControl(hTw);
                Response.Write(swOut.ToString());
                Response.End();
        }   
    }
}