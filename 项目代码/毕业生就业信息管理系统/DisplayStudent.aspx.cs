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
    public partial class DisplayStudent : System.Web.UI.Page
    {
        static DataTable DT;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DT = Business.AdminBusiness.SelectViewStudent();
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
            pds.PageSize = 3;
            pds.CurrentPageIndex = Convert.ToInt32(ViewState["pageindex"].ToString());
            ViewState["pagecount"] = pds.PageCount;
            if (pds.IsFirstPage)
            {
                this.lbtn_pre.Enabled = false;
            }
            else
            {
                this.lbtn_pre.Enabled = true;
            }
            if (pds.IsLastPage)
            {
                this.lbtn_next.Enabled = false;
            }
            else
            {
                this.lbtn_next.Enabled = true;
            }
            return pds;
        }
        private void LoadDataList(DataTable dt)
        {
           
           this.dl_Student.DataSource = this.DataListPaging(dt);
            this.dl_Student.DataBind();
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = sender as LinkButton;
            string cmda = lbtn.CommandArgument;
            int pageindex = Convert.ToInt32(ViewState["pageindex"].ToString());
            if(cmda=="pre")
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

        protected void btn_go_Click(object sender, EventArgs e)
        {
            int pagenum = Convert.ToInt32(this.tbx_pagenum.Text.Trim());
            int pageindex = pagenum - 1;
            int pagecount = Convert.ToInt32(ViewState["pagecount"]);
            if(pageindex<0)
            {
                Response.Write("<script>alert('页数必须大于0！将回到首页。')</script>");
                pageindex = 0;
            }
            if (pageindex >= pagecount)
            {
                Response.Write("<script>alert('页数不能超过总页数！将达到最后一页。')</script>");
                pageindex = pagecount -1;
            }

            ViewState["pageindex"] = pageindex;
            this.LoadDataList(DT);
            this.tbx_pagenum.Text = (pageindex) + 1.ToString();
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            string sname = this.tbx_searchSname.Text.Trim();
            if(sname=="")
            {
                Response.Write("<script>alert('教师姓名不能为空！')</script>");
                //return;
                this.LoadDataList(DT);
            }
            Entity.Student s = new Student();
            s.Studentname = "%" + sname + "%";
            DT = Business.AdminBusiness.SelectViewStudentbyStudentName(s);
            this.dl_Student.DataSource = this.DataListPaging(DT);
            this.dl_Student.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton lkbn = (ImageButton)sender;
            string sid = lkbn.CommandArgument;
            Response.Redirect("~/StudentInfoWebPage.aspx?sid=" + sid);
        }
    }
}


