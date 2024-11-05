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

namespace 毕业生就业信息管理系统
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            this.tbx_id.Text = "";
            this.tbx_password.Text = "";
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (this.tbx_id.Text.Trim() == "")
            {
                Response.Write("<script>alert('用户ID不能为空！')</script>");
                return;
            }
            if (this.tbx_password.Text.Trim() == "")
            {
                Response.Write("<script>alert('密码不能为空！')</script>");
                return;
            }

            Entity.Logine l = new Logine();
            l.Id = this.tbx_id.Text.Trim();
            l.Password = this.tbx_password.Text.Trim();
            object result = Business.CommonBLL.LoginCheck(l);
            if (result == null)
            {
                Response.Write("<script>alert('用户名密码错误，请重新输入！')</script>");
                return;
            }
            l.Roleid = result.ToString().Trim();
            l.Password = "";
            Session["role"] = l;
            if (l.Roleid == "01")
            {
                Response.Write("<script>alert('欢迎进入管理员界面！');window.location.href='AdminMainPage.aspx'</script>");
            }
            else if(l.Roleid=="02")
            {
                Response.Write("<script>alert('欢迎进入学生界面！');window.location.href='StudentMainPage.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('欢迎进入公司操作界面！');window.location.href='CompanyMainPage.aspx'</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (this.tbx_id.Text.Trim() == "")
            {
                Response.Write("<script>alert('用户ID不能为空！')</script>");
                return;
            }
            Entity.Logine l = new Logine();
            l.Id = this.tbx_id.Text.Trim();
            Session["user"] = l;
            Response.Redirect("~/updateuserpassword.aspx?");
         
        }
    }
}