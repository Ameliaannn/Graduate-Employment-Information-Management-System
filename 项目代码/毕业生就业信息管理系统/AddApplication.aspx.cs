using System;
using System.Collections.Generic;//泛型
using System.Linq;//实现查询
using System.Web;//web开发
using System.Web.UI;//用户界面 类和方法
using System.Web.UI.WebControls;//控件

namespace 毕业生就业信息管理系统
{
    public partial class AddApplication : System.Web.UI.Page //部分类 .... 继承自.....
    {
        protected void Page_Load(object sender, EventArgs e)//每次请求页面时都会触发此事件
        {
            if (!Page.IsPostBack)//是否回发 初次访问页面条件为真
            {
                Entity.Logine l = (Entity.Logine)Session["role"];// session querystring cookie request
                Entity.Company c = new Entity.Company();//实例化
                c.Companyid = l.Id;
                double total = Convert.ToInt32(Business.CompanyBusiness.CountApplications(c)) + 1;//Convert.ToInt32类型转换 业务逻辑层
                this.Label1.Text = "00" + total.ToString();
                this.Label2.Text = c.Companyid;
            }
        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            Entity.Company c = new Entity.Company();
            c.Cid = Label1.Text.Trim();
            c.Companyid = Label2.Text.Trim();
            c.Companyname = TextBox1.Text.Trim();
            c.Date = DropDownList1.SelectedValue.Trim();
            c.Address = TextBox3.Text.Trim();
            c.State = lb_state.Text.Trim();//实体类 封装
            int result = Business.CompanyBusiness.AddApplications(c);
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