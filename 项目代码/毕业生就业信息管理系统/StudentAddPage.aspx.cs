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
    public partial class StudentAddPage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Entity.Logine l = (Entity.Logine)Session["role"];
                Entity.Student s = new Entity.Student();
                s.Studentid = l.Id;
                this.DataList1.DataSource = Business.AdminBusiness.SelectStudentbySID3(s);
                this.DataList1.DataBind();
            }
            
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = e.Item.ItemIndex;
            Entity.Student s = new Student();
            s.Studentid = ((Label)e.Item.FindControl("label2")).Text;
            this.DataList1.DataSource = Business.AdminBusiness.SelectStudentbySID3(s);
            this.DataList1.DataBind();

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            DataTable dt = this.DataList1.DataSource as DataTable;

            DropDownList ddl = (DropDownList)e.Item.FindControl("ddl_school");
            if (ddl != null)
            {
                ddl.DataSource = Business.AdminBusiness.SelectAllschool();
                ddl.DataTextField = "schoolname";
                ddl.DataValueField = "schoolid";
                ddl.SelectedValue = dt.Rows[e.Item.ItemIndex]["schoolid"].ToString();
                ddl.DataBind();
            }
            //
            ddl = (DropDownList)e.Item.FindControl("ddl_destination");
            if (ddl != null)
            {
                ddl.DataSource = Business.AdminBusiness.SelectAllDestination();
                ddl.DataTextField = "DestinationName";
                ddl.DataValueField = "DestinationID";
                ddl.SelectedValue = dt.Rows[e.Item.ItemIndex]["DestinationID"].ToString();
                ddl.DataBind();
            }

        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            this.DataList1.EditItemIndex = -1;
            Entity.Student s = new Student();
            s.Studentid = ((Label)e.Item.FindControl("lb_studentid")).Text;
            this.DataList1.DataSource = Business.AdminBusiness.SelectStudentbySID3(s);
            this.DataList1.DataBind();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Student s = new Student();
            s.Studentid = ((Label)e.Item.FindControl("lb_studentid")).Text;
            s.Gender = ((DropDownList)e.Item.FindControl("ddl_gender")).SelectedValue;
            s.Enteryear=((DropDownList)e.Item.FindControl("ddl_enteryear")).SelectedValue;
            s.Gradyear = ((DropDownList)e.Item.FindControl("ddl_gradyear")).SelectedValue;        
            s.Class = ((DropDownList)e.Item.FindControl("ddl_class")).SelectedValue;
            s.Schoolid = ((DropDownList)e.Item.FindControl("ddl_school")).SelectedValue;
            s.Age = Convert.ToInt32(((DropDownList)e.Item.FindControl("ddl_age")).SelectedValue);
            s.Birthday = Convert.ToDateTime(((TextBox)e.Item.FindControl("tbx_birthday")).Text);
            s.Destinationid = ((DropDownList)e.Item.FindControl("ddl_destination")).SelectedValue;
            s.Phone = ((TextBox)e.Item.FindControl("tbx_phone")).Text;
            s.Address = ((TextBox)e.Item.FindControl("tbx_address")).Text;
            s.Postcode = ((TextBox)e.Item.FindControl("tbx_postcode")).Text;
            s.Email = ((TextBox)e.Item.FindControl("tbx_email")).Text;
            s.Stuimageurl = ((Image)e.Item.FindControl("Image1")).ImageUrl;
            //
            int result = Business.AdminBusiness.UpdateStudent2(s);
            if (result > 0)
            {
                Response.Write("<script>alert('更新成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('更新失败!')</script>");
            }
            this.DataList1.EditItemIndex = -1;

          
            this.DataList1.DataSource = Business.AdminBusiness.SelectStudentbySID3(s);
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
    }
}