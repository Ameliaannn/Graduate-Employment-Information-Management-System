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
    public partial class AdminEditAPPState : System.Web.UI.Page
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
            c.Companyid = Request.QueryString["companyid"];
            this.DataList1.DataSource = Business.AdminBusiness.SelectApplicationbyCID(c);
            this.DataList1.DataBind();
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
            Response.Redirect("~/AdminEditApplications.aspx");
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Company c = new Company();
            c.Cid = ((Label)e.Item.FindControl("Label1")).Text;
            c.Companyid = ((Label)e.Item.FindControl("Label2")).Text;
            c.Companyname = ((Label)e.Item.FindControl("Label3")).Text;
            c.Date = ((Label)e.Item.FindControl("Label4")).Text;
            c.Address = ((Label)e.Item.FindControl("Label5")).Text;
            c.State = ((DropDownList)e.Item.FindControl("DropDownList1")).SelectedValue;
            //
            int result = Business.AdminBusiness.UpdateApplications(c);
            if (result > 0)
             {
                Response.Write("<script>alert('审核完成!')</script>");
            }
            else
            {
                Response.Write("<script>alert('审核操作失败!')</script>");
            }
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
        }
    }
}