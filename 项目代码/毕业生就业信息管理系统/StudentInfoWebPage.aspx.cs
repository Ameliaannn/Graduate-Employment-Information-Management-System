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
    public partial class StudentInfoWebPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if (Request.QueryString["sid"] == null)
                {
                    Response.Write("<script>alert('请选中某位学生！');window.location.href='DisplayStudent.aspx'</script>");
                    return;
                }
                LoadDataList();
            }
        }

        private void LoadDataList()
        {
            Entity.Student s = new Entity.Student();
            s.Studentid = Request.QueryString["sid"];
            this.dl_add.DataSource = Business.AdminBusiness.SelectStudentbySID(s);
            this.dl_add.DataBind();
        }
        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            this.dl_add.EditItemIndex = e.Item.ItemIndex;
            this.LoadDataList();
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            DataTable dt = this.dl_add.DataSource as DataTable;

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
            ddl = (DropDownList)e.Item.FindControl("ddl_Destination");
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
            this.dl_add.EditItemIndex = -1;
            this.LoadDataList();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Student s = new Student();
            s.Studentid = ((Label)e.Item.FindControl("Label1")).Text;
            s.Studentname = ((TextBox)e.Item.FindControl("tbx_studentname")).Text;
            s.Gender = ((DropDownList)e.Item.FindControl("ddl_gender")).SelectedValue;
            s.Enteryear = ((TextBox)e.Item.FindControl("tbx_EnterYear")).Text;
            s.Gradyear = ((TextBox)e.Item.FindControl("tbx_GradYear")).Text;
            s.Class =((DropDownList)e.Item.FindControl("ddl_class")).SelectedValue;
            s.Schoolid= ((DropDownList)e.Item.FindControl("ddl_school")).SelectedValue;
            s.Age= Convert.ToInt32(((DropDownList)e.Item.FindControl("ddl_age")).SelectedValue);
            s.Birthday = Convert.ToDateTime(((TextBox)e.Item.FindControl("tbx_birthday")).Text);
            s.Destinationid= ((DropDownList)e.Item.FindControl("ddl_Destination")).SelectedValue;
            s.Phone = ((TextBox)e.Item.FindControl("tbx_phone")).Text;
            s.Address = ((TextBox)e.Item.FindControl("tbx_address")).Text;
            s.Postcode = ((TextBox)e.Item.FindControl("tbx_postcode")).Text;
            s.Email= ((TextBox)e.Item.FindControl("tbx_email")).Text;
            s.Stuimageurl = ((Image)e.Item.FindControl("Image1")).ImageUrl;
            //
            int result = Business.AdminBusiness.UpdateStudent(s);
            if (result > 0)
            {
                Response.Write("<script>alert('更新成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('更新失败!')</script>");
            }
            this.dl_add.EditItemIndex = -1;
            this.LoadDataList();


        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            FileUpload ful = (FileUpload)this.dl_add.Items[0].FindControl("FileUpLoad1");
            Image img = (Image)this.dl_add.Items[0].FindControl("Image1");
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

        protected void dl_add_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            Entity.Student s = new Student();
            s.Studentid = ((Label)e.Item.FindControl("Label1")).Text;
            s.Studentname = ((TextBox)e.Item.FindControl("tbx_studentname")).Text;
            s.Gender = ((DropDownList)e.Item.FindControl("ddl_gender")).SelectedValue;
            s.Enteryear = ((TextBox)e.Item.FindControl("tbx_EnterYear")).Text;
            s.Gradyear = ((TextBox)e.Item.FindControl("tbx_GradYear")).Text;
            s.Class = ((DropDownList)e.Item.FindControl("ddl_class")).SelectedValue;
            s.Schoolid = ((DropDownList)e.Item.FindControl("ddl_school")).SelectedValue;
            s.Age = Convert.ToInt32(((DropDownList)e.Item.FindControl("ddl_age")).SelectedValue);
            s.Birthday = Convert.ToDateTime(((TextBox)e.Item.FindControl("tbx_birthday")).Text);
            s.Destinationid = ((DropDownList)e.Item.FindControl("ddl_Destination")).SelectedValue;
            s.Phone = ((TextBox)e.Item.FindControl("tbx_phone")).Text;
            s.Address = ((TextBox)e.Item.FindControl("tbx_address")).Text;
            s.Postcode = ((TextBox)e.Item.FindControl("tbx_postcode")).Text;
            s.Email = ((TextBox)e.Item.FindControl("tbx_email")).Text;
            s.Stuimageurl = ((Image)e.Item.FindControl("Image1")).ImageUrl;
            //
            Business.AdminBusiness.AddDeleteStudent(s);

            int result = Business.AdminBusiness.DeleteStudent(s);
            if (result > 0)
            {
                Response.Write("<script>alert('删除成功，已删除学生信息可在回收站找回!')</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败!')</script>");
            }
            this.dl_add.EditItemIndex = -1;
            this.LoadDataList();
        }
    }
}