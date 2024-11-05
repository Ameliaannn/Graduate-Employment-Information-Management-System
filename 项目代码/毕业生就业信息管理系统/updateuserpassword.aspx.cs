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
    public partial class updateuserpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Entity.Logine l = (Entity.Logine)Session["user"];
            this.lb_id.Text = l.Id;           
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            this.tbx_password.Text = "";
            this.tbx_password2.Text = "";
        }

        protected void btn_updatepwd_Click(object sender, EventArgs e)
        {
            if (this.tbx_password.Text.Trim() == "")
            {
                Response.Write("<script>alert('用户密码不能为空！')</script>");
                return;
            }
            if (this.tbx_password2.Text.Trim() == "")
            {
                Response.Write("<script>alert('请再次输入确认密码！')</script>");
                return;
            }
            if(this.tbx_password.Text.Trim()!= this.tbx_password2.Text.Trim())
            {
                Response.Write("<script>alert('两次密码不一致！')</script>");
                return;
            }
            Entity.Logine l = new Logine();
            l.Id = this.lb_id.Text.Trim();
            l.Password = this.tbx_password.Text.Trim();
            int result = Business.CommonBLL.Updateuserpwd(l);
            if (result > 0)
            {
                Response.Write("<script>alert('修改成功！');window.location.href='Login.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('请重新输入密码!')</script>");
            }

        }

        protected void btn_return_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx?");
        }
    }
}