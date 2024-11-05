using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace 毕业生就业信息管理系统
{
    public partial class AddStudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            Entity.Student s = new Entity.Student();
            s.Studentid = tbx_studentid.Text.Trim();
            s.Studentname = tbx_studentname.Text.Trim();
            s.Genderid = ddl_genderid.Text.Trim();
            s.Gender = ddl_gender.Text.Trim();
            s.Enteryear = ddl_enteryear.Text.Trim();
            s.Gradyear = ddl_gradeyear.Text.Trim();
            s.Class = ddl_class.Text.Trim();
            s.Schoolid = ddl_Schoolid.Text.Trim();
            s.Schoolname = ddl_schoolname.Text.Trim();
            s.Age = Convert.ToInt32(ddl_age.SelectedValue) ;
            s.Birthday = Convert.ToDateTime(tbx_birthday.Text.Trim());
            s.Destinationid = ddl_Destinationid.Text.Trim();
            s.DestinationName = ddl_Destinationname.Text.Trim();
            s.Phone = tbx_phone.Text.Trim();
            s.Address = tbx_address.Text.Trim();
            s.Postcode = tbx_postcode.Text.Trim();
            s.Email = tbx_email.Text.Trim();
            s.Audit = tbx_audit.Text.Trim();
            s.Stuimageurl = "";
            s.Contractid = "";
            s.Companyid = "";
            //
            int result = Business.AdminBusiness.AddNewStudent(s);
            if (result > 0)
            {
                Response.Write("<script>alert('上传成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('上传失败!')</script>");
            }
        }


        //protected void btn_upload_Click(object sender, EventArgs e)
        //{
        //    //1:将excel上传到服务器；
        //    string fileUrl = this.GetExcel();
        //    //2:将excel数据导入数据库
        //    this.InsetData(this.GetExcelDatatable(fileUrl));
        //}
        ////1：客户端上传excel到服务器
        ////@return：fileUrl  服务器文件路径
        //protected string GetExcel()
        //{
        //    string fileUrl = "";
        //    #region 文件上传
        //    try
        //    {
        //        //全名  
        //        string excelFile = this.FileUpload1.PostedFile.FileName;
        //        //获取文件名（不包括扩展名）  
        //        string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
        //        //扩展名  
        //        string extentionName = excelFile.Substring(excelFile.LastIndexOf(".") + 1);
        //        if (fileName == "" || fileName == null)
        //        {
        //            Response.Write("<script>alert('请先选择Excel文件！')</script>");
        //            return null;
        //        }
        //        if (extentionName != "xls" && extentionName != "xlsx")
        //        {
        //            Response.Write("<script>alert('您上传的不是Excel文件！')</script>");
        //            return null;
        //        }
        //        //浏览器安全性限制 无法直接获取客户端文件的真实路径，将文件上传到服务器端 然后获取文件源路径  
        //        #region 设置上传路径将文件保存到服务器
        //        string dateTime = DateTime.Now.Date.ToString("yyyyMMdd");
        //        string time = DateTime.Now.ToShortTimeString().Replace(":", "");
        //        string newFileName = dateTime + time + DateTime.Now.Millisecond.ToString() + ".xls"; ;
        //        //自己创建的文件夹 位置随意 合理即可  
        //        fileUrl = Server.MapPath("..\\excel") + "\\" + newFileName;
        //        this.FileUpload1.PostedFile.SaveAs(fileUrl);
        //        //Response.Write("<script>alert('已经上传到服务器文件夹')</script>");
        //        return fileUrl;
        //        #endregion

        //    }
        //    catch
        //    {
        //        Response.Write("<script>alert('数据上传失败，请重新导入')</script>");
        //        return null;
        //    }
        //    #endregion
        //}
        ////2：Excel数据导入Datable
        ////@param fileUrl 服务器文件路径
        ////@return System.Data.DataTable dt 
        //protected System.Data.DataTable GetExcelDatatable(string fileUrl)
        //{
        //    //office2007之前 仅支持.xls
        //    //const string cmdText = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source={0};Extended Properties='Excel 8.0;IMEX=1';";
        //    //支持.xls和.xlsx，即包括office2010等版本的   HDR=Yes代表第一行是标题，不是数据；
        //    const string cmdText = "Provider=Microsoft.Ace.OleDb.12.0;Data Source=={0};Extended Properties='Excel 12.0; HDR=Yes; IMEX=1'";

        //    System.Data.DataTable dt = null;
        //    //建立连接
        //    OleDbConnection conn = new OleDbConnection(string.Format(cmdText, fileUrl));

        //    //打开连接
        //    if (conn.State == ConnectionState.Broken || conn.State == ConnectionState.Closed)
        //    {
        //        conn.Open();
        //    }


        //    System.Data.DataTable schemaTable = conn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);

        //    //获取Excel的第一个Sheet名称
        //    string sheetName = schemaTable.Rows[0]["TABLE_NAME"].ToString().Trim();

        //    //查询sheet中的数据
        //    string strSql = "select * from [" + sheetName + "]";
        //    OleDbDataAdapter da = new OleDbDataAdapter(strSql, conn);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    dt = ds.Tables[0];

        //    return dt;


        //}
        ////3：从System.Data.DataTable导入数据到数据库
        ////@param System.Data.DataTable dt
        //protected void InsetData(System.Data.DataTable dt)
        //{
        //    int i = 0;
        //    string StudentID = "";
        //    string StudentName = "";
        //    string EnterYear = "";
        //    string GradYear = "";
        //    string Class = "";
        //    string SchoolID = "";
        //    string SchoolName = "";
        //    string birthday = "";
        //    int Age = 0;
        //    string DestinationID = "";
        //    string DestinationName = "";
        //    string genderid = "";
        //    string gender = "";
        //    string phone = "";
        //    string address = "";
        //    string postcode = "";
        //    string email = "";
        //    string StuImageUrl = "";
        //    string CompanyID = "";
        //    string ContractID = "";
        //    string Audit = "";
        //    foreach (DataRow dr in dt.Rows)
        //    {
        //        //此处遍历获取excel的数据
        //        StudentID = dr[0].ToString().Trim();
        //        StudentName = dr[1].ToString().Trim();
        //        EnterYear = dr[2].ToString().Trim();
        //        GradYear = dr[3].ToString().Trim();
        //        Class = dr[4].ToString().Trim();
        //        SchoolID = dr[5].ToString().Trim();
        //        SchoolName = dr[6].ToString().Trim();
        //        birthday = dr[7].ToString().Trim();
        //        Age = (int)(dr[8]);
        //        DestinationID = dr[9].ToString().Trim();
        //        DestinationName = dr[10].ToString().Trim();
        //        genderid = dr[11].ToString().Trim();
        //        gender = dr[12].ToString().Trim();
        //        phone = dr[13].ToString().Trim();
        //        address = dr[14].ToString().Trim();
        //        postcode = dr[15].ToString().Trim();
        //        email = dr[16].ToString().Trim();
        //        StuImageUrl = dr[17].ToString().Trim();
        //        CompanyID = dr[18].ToString().Trim();
        //        ContractID = dr[19].ToString().Trim();
        //        Audit = dr[20].ToString().Trim();
        //        Entity.Student s = new Entity.Student();
        //        //此处执行你的数据库插入语句即可
        //        int result = Business.AdminBusiness.AddNewStudent(s);
        //        if (result > 0)
        //        {
        //            Response.Write("<script>alert('添加权限成功!')</script>");
        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('导入失败，格式出错！')</script>");
        //        }
        //    }

        //    if (i == dt.Rows.Count)
        //    {
        //        Response.Write("<script>alert('导入成功：共导入' + i + '组数据！！')</script>");
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('未完全导入！！')</script>");
        //    }
        //}

    }
}