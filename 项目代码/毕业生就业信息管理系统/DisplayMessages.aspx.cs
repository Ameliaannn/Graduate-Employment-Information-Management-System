using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;
using System.Data.SqlClient;
using Entity;
using Business;

namespace 毕业生就业信息管理系统
{
    public partial class DisplayMessages : System.Web.UI.Page
    {
        static DataTable DT;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DT = Business.AdminBusiness.SelectViewMessages();
                ViewState["pageindex"] = 0;
                this.LoadDataList(DT);             
            }
        }

        private PagedDataSource DataListPaging(DataTable dt)
        {
            DataView dv = dt.DefaultView;
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = dv;
            pds.AllowPaging = true;
            pds.PageSize = 2;
            pds.CurrentPageIndex = Convert.ToInt32(ViewState["pageindex"].ToString());
            ViewState["pagecount"] = pds.PageCount;
            if (pds.IsFirstPage)
            {
                this.lkbtn_pre.Enabled = false;
            }
            else
            {
                this.lkbtn_pre.Enabled = true;
            }
            if (pds.IsLastPage)
            {
                this.lkbtn_next.Enabled = false;
            }
            else
            {
                this.lkbtn_next.Enabled = true;
            }
            return pds;
        }
        private void LoadDataList(DataTable dt)
        {
            this.DataList1.DataSource = this.DataListPaging(dt);
            this.DataList1.DataBind();
        }

        protected void btn_go_Click(object sender, EventArgs e)
        {
            int pagenum = Convert.ToInt32(this.tbx_pagenum.Text.Trim());
            int pageindex = pagenum - 1;
            int pagecount = Convert.ToInt32(ViewState["pagecount"]);
            if (pageindex < 0)
            {
                Response.Write("<script>alert('页数必须大于0！将回到首页。')</script>");
                pageindex = 0;
            }
            if (pageindex >= pagecount)
            {
                Response.Write("<script>alert('页数不能超过总页数！将达到最后一页。')</script>");
                pageindex = pagecount - 1;
            }

            ViewState["pageindex"] = pageindex;
            this.LoadDataList(DT);
            this.tbx_pagenum.Text = (pageindex) + 1.ToString();
        }

        protected void lkbtn_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = sender as LinkButton;
            string cmda = lbtn.CommandArgument;
            int pageindex = Convert.ToInt32(ViewState["pageindex"].ToString());
            if (cmda == "pre")
            {
                pageindex = pageindex - 1;
            }
            else
            {
                pageindex = pageindex + 1;
            }
            ViewState["pageindex"] = pageindex;
            this.LoadDataList(DT);
            this.tbx_pagenum.Text = (pageindex + 1).ToString();
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string cname = this.TextBox2.Text.Trim();
            if (cname == "")
            {
                Response.Write("<script>alert('公司名称不能为空！')</script>");
                //return;
                this.LoadDataList(DT);
            }
            Entity.Company c = new Company();
            c.Companyname = "%" + cname + "%";
            DT = Business.AdminBusiness.SelectViewcompanybycompanyName(c);
            this.DataList1.DataSource = this.DataListPaging(DT);
            this.DataList1.DataBind();
        }
        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            //Entity.Company c = new Company();
            //c.Companyid = ((Label)e.Item.FindControl("lb_companyid")).Text;
            string cid = ((Label)e.Item.FindControl("lb_companyid")).Text;
            Response.Redirect("~/MessagesInfoPage.aspx?cid=" + cid);
        }
    }
}