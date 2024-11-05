using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 毕业生就业信息管理系统
{
    public partial class AddNewuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Entity.Logine l = new Entity.Logine();
            l.Id=tbx_id.Text.Trim();
            l.Password=tbx_pwd.Text.Trim();
            l.Roleid = ddl_roleid.SelectedValue.Trim();
            //
            int result = Business.AdminBusiness.AddNewUser(l);
            if (result > 0)
            {
                Response.Write("<script>alert('添加权限成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('添加权限失败!')</script>");
            }
        }
    }
}