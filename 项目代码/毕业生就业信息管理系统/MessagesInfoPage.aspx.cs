using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using Business;
using Entity;
using System.Data;
using System.IO;

namespace 毕业生就业信息管理系统
{
    public partial class MessagesInfoPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDataList();
            }
        }
        private void LoadDataList()
        {
            Entity.Company c = new Entity.Company();
            c.Companyid = Request.QueryString["cid"];
            this.DataList1.DataSource = Business.AdminBusiness.SelectCompanybyCID(c);
            this.DataList1.DataBind();
        }
        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = e.Item.ItemIndex;
            this.LoadDataList();
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Company c = new Entity.Company();
            c.Companyid= ((Label)e.Item.FindControl("lb_companyid")).Text;
            c.Companyname= ((TextBox)e.Item.FindControl("tbx_companyname")).Text;
            c.Messages = ((TextBox)e.Item.FindControl("TextBox1")).Text;
            //
            int result = Business.AdminBusiness.UpdateMessages(c);
            if (result > 0)
            {
                Response.Write("<script>alert('编辑招聘信息成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('编辑招聘信息失败!')</script>");
            }
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Company c = new Entity.Company();
            c.Companyid = ((Label)e.Item.FindControl("lb_companyid")).Text;
            c.Companyname = ((TextBox)e.Item.FindControl("tbx_companyname")).Text;
            c.Messages = ((TextBox)e.Item.FindControl("TextBox1")).Text;
            //
            int result = Business.AdminBusiness.DeleteMessages(c);
            if (result > 0)
            {
                Response.Write("<script>alert('删除招聘信息成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('删除招聘信息失败!')</script>");
            }
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
        }
    }
}