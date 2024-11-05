using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 毕业生就业信息管理系统
{
    public partial class AdminManagePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            if (this.TreeView1.SelectedValue == "退出系统")
            {
                Response.Write("<script>parent.window.location.href='Login.aspx'</script>");
            }
        }

    }
}