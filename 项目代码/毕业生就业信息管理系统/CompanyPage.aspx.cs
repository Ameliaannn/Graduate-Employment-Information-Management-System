using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 毕业生就业信息管理系统
{
    public partial class CompanyPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Entity.Logine l = (Entity.Logine)Session["role"];
            Entity.Company c = new Entity.Company();
            c.Companyid = l.Id;
            c.Companyname= Business.CompanyBusiness.GetCompanyNameByID(c).ToString();
            this.Label2.Text = "欢迎您，" + c.Companyname;
        
        }
    }
}