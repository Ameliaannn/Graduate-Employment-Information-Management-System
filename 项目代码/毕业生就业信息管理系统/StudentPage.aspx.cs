using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 毕业生就业信息管理系统
{
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Entity.Logine l = (Entity.Logine)Session["role"];
            Entity.Student s = new Entity.Student();
            s.Studentid = l.Id;
            s.Audit = Business.AdminBusiness.GetAuditByID(s).ToString();
            s.Studentname = Business.AdminBusiness.GetStudentNameByID(s).ToString();
            string ss = s.Audit;
            if (ss == "审核未通过")
            {               
                this.Label1.Text = "欢迎您，" + s.Studentname + "同学！请尽快完善就业信息！";
            }
            else
            {
                this.Label1.Text = s.Studentname + "同学,您的审核状态为："+s.Audit;
            }
        }   
        
    }
}