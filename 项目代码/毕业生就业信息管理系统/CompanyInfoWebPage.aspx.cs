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
    public partial class CompanyInfoWebPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Entity.Logine l = (Entity.Logine)Session["role"];
                Entity.Company c = new Entity.Company();
                c.Companyid = l.Id;
                this.DataList1.DataSource = Business.CompanyBusiness.SelectCompanybyCID2(c);
                this.DataList1.DataBind();
            }
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = e.Item.ItemIndex;
            Entity.Company c = new Company();
            c.Companyid= ((Label)e.Item.FindControl("label1")).Text;
            this.DataList1.DataSource = Business.CompanyBusiness.SelectCompanybyCID2(c);
            this.DataList1.DataBind();
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = -1;
            Entity.Company c = new Company();
            c.Companyid = ((Label)e.Item.FindControl("lb_cid")).Text;
            this.DataList1.DataSource = Business.CompanyBusiness.SelectCompanybyCID2(c);
            this.DataList1.DataBind();
        }

        protected void btn_imageupload_Click(object sender, EventArgs e)
        {
            FileUpload ful = (FileUpload)this.DataList1.Items[0].FindControl("FileUpLoad1");
            Image img = (Image)this.DataList1.Items[0].FindControl("Image1");
            if (!ful.HasFile)
            {
                Response.Write("<script>alert('请选择JPG或png文件！')</script>");
                return;
            }
            string uploadfile = ful.FileName;
            string fileexth = System.IO.Path.GetExtension(uploadfile);
            string newfname = DateTime.Now.ToString("yyyyMMddhhmmssff") + fileexth;
            if (fileexth.ToLower() == ".jpg" || fileexth.ToLower() == ".png")
            {
                string dcty = "~/images";
                if (!Directory.Exists(Server.MapPath(dcty)))
                {
                    Directory.CreateDirectory(Server.MapPath(dcty));
                }
                dcty += "/";
                ful.SaveAs(Server.MapPath(dcty) + newfname);
                img.ImageUrl = dcty + newfname;
            }
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Company c = new Company(); //创建一个实体类 实例化
            c.Cid = ((TextBox)e.Item.FindControl("TextBox1")).Text; //从前台获取用户输入的数据内容
            c.Companyid = ((Label)e.Item.FindControl("lb_cid")).Text;      
            c.Companyname = ((TextBox)e.Item.FindControl("TextBox2")).Text;
            c.Address = ((TextBox)e.Item.FindControl("TextBox3")).Text;
            c.Post = ((TextBox)e.Item.FindControl("TextBox4")).Text;         
            c.Cimageurl = ((Image)e.Item.FindControl("Image1")).ImageUrl;//接下来执行更新操作
            //
            int result = Business.CompanyBusiness.UpdateCompany(c);
            if (result > 0)
            {
                Response.Write("<script>alert('更新成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('更新失败!')</script>");
            }
            this.DataList1.EditItemIndex = -1;
            this.DataList1.DataSource = Business.CompanyBusiness.SelectCompanybyCID2(c);//刷新
            this.DataList1.DataBind();//绑定
        }

    }
}