using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 毕业生就业信息管理系统
{
    public partial class CompanyAddMessages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Entity.Company c = new Entity.Company();
                c.Companyid = "001";
                double total = Convert.ToInt32(Business.CompanyBusiness.CountMessages(c))+1;
                this.Label1.Text = "0"+total.ToString();
            }
        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            Entity.Company c = new Entity.Company();
            c.Companyid = Label1.Text.Trim();
            c.Companyname = tbx_companyname.Text.Trim();
            c.Messages = TextBox1.Text.Trim();
            //
            int result = Business.AdminBusiness.AddMessages(c);
            if (result > 0)
            {
                Response.Write("<script>alert('上传招聘成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('上传招聘信息失败!')</script>");
            }
        }
    }
}