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
    public partial class Edituser : System.Web.UI.Page
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
            Entity.Logine l = new Entity.Logine();
            l.Id=Request.QueryString["id"];
            this.DataList1.DataSource = Business.AdminBusiness.SelectuserbyID(l);
            this.DataList1.DataBind();
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
            Response.Redirect("~/ManageUser.aspx");
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Logine l = new Entity.Logine();
            l.Id = ((Label)e.Item.FindControl("lb_id")).Text;
            l.Password= ((TextBox)e.Item.FindControl("tbx_pwd")).Text;
            //
            int result = Business.AdminBusiness.UpdateLogin(l);
            if (result > 0)
            {
                Response.Write("<script>alert('修改成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败!')</script>");
            }
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Logine l = new Entity.Logine();
            l.Id = ((Label)e.Item.FindControl("lb_id")).Text;
            //
            int result = Business.AdminBusiness.DeleteUser(l);
            if (result > 0)
            {
                Response.Write("<script>alert('删除成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败!')</script>");
            }
            this.DataList1.EditItemIndex = -1;
            this.LoadDataList();

        }
    }
}