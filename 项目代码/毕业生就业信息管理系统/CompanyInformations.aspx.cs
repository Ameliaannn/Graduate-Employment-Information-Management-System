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
    public partial class CompanyInformations : System.Web.UI.Page
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
            this.DataList1.DataSource = Business.AdminBusiness.SelectCompanybyCID2(c);
            this.DataList1.DataBind();
        }

    }
}