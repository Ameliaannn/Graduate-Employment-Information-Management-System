using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//
using System.Data;
using Entity;
using DataAccess;

namespace Business
{
    public static class AdminBusiness
    {
        public static DataTable SelectViewStudent()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_studentAdd" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectViewStudent2()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_studentAdd" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectViewdelete()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_delete" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectViewLogin()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_Login" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectViewApplications()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_Applications" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectViewCompany()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_company" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectViewContract()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_contract" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectViewMessages()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_messages" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }


        public static DataTable SelectStudentbySID(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetDataTable("spr_SelectStudentbySID", CommandType.StoredProcedure, names, values);
        }
        
        public static DataTable SelectStudentbySID2(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetDataTable("SelectStudentbySID2", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectStudentbySID3(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetDataTable("spr_SelectStudentbySID2", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectuserbyID(Entity.Logine l)
        {
            string[] names = new string[] { "id" };
            object[] values = new object[] { l.Id };

            return DataAccess.DA.GetDataTable("spr_SelectuserbyID", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectApplicationbyCID(Entity.Company c)
        {
            string[] names = new string[] { "companyid" };
            object[] values = new object[] {c.Companyid };

            return DataAccess.DA.GetDataTable("spr_SelectApplicationbyCID", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectCompanybyCID2(Entity.Company c)
        {
            string[] names = new string[] { "companyid" };
            object[] values = new object[] { c.Companyid };

            return DataAccess.DA.GetDataTable("spr_SelectCompanybyCID2", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectAllschool()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "tb_School" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectAllDestination()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "tb_Destination" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }

        public static object GetStudentNameByID(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_GetStudentNameByID", CommandType.StoredProcedure, names, values);
        }

        public static object GetAuditByID(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_GetAuditByID", CommandType.StoredProcedure, names, values);
        }
        public static object GetUrlByID(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_GetUrlByID", CommandType.StoredProcedure, names, values);
        }
        public static int UpdateStudent(Entity.Student s)
        {
            string[] names = new string[] {"StudentID","StudentName","EnterYear","GradYear","Class","SchoolID","birthday","Age","DestinationID","gender","phone","address","postcode","email","StuImageUrl"};
            object[] values = new object[] {s.Studentid,s.Studentname,s.Enteryear,s.Gradyear,s.Class,s.Schoolid,s.Birthday,s.Age,s.Destinationid,s.Gender,s.Phone,s.Address,s.Postcode,s.Email,s.Stuimageurl};

            return DataAccess.DA.ExecuteSQL("spr_UpdateStudent", CommandType.StoredProcedure, names, values);
        }

        public static int UpdateStudent2(Entity.Student s)
        {
            string[] names = new string[] { "StudentID", "EnterYear", "GradYear", "Class", "SchoolID", "birthday", "Age", "DestinationID", "gender", "phone", "address", "postcode", "email", "StuImageUrl" };
            object[] values = new object[] { s.Studentid, s.Enteryear, s.Gradyear, s.Class, s.Schoolid, s.Birthday, s.Age, s.Destinationid, s.Gender, s.Phone, s.Address, s.Postcode, s.Email, s.Stuimageurl };

            return DataAccess.DA.ExecuteSQL("spr_UpdateStudent2", CommandType.StoredProcedure, names, values);
        }

        public static int UpdateContract(Entity.Student s)
        {
            string[] names = new string[] { "StudentID", "ContractID", "CompanyName", "Audit" };
            object[] values = new object[] { s.Studentid, s.Contractid,s.Companyname,s.Audit};

            return DataAccess.DA.ExecuteSQL("spr_UpdateContract", CommandType.StoredProcedure, names, values);
        }
        public static int UpdateMessages(Entity.Company c)
        {
            string[] names = new string[] { "Companyid", "Companyname", "Messages" };
            object[] values = new object[] { c.Companyid,c.Companyname, c.Messages };

            return DataAccess.DA.ExecuteSQL("spr_UpdateMessages", CommandType.StoredProcedure, names, values);
        }

        public static int UpdateStuContract(Entity.Student s)
        {
            string[] names = new string[] { "StudentID", "ContractID", "ContractImageUrl" };
            object[] values = new object[] { s.Studentid, s.Contractid, s.ContractImageUrl };

            return DataAccess.DA.ExecuteSQL("spr_UpdateStuContract", CommandType.StoredProcedure, names, values);
        }
        public static int UpdateApplications(Entity.Company c)
        {
            string[] names = new string[] { "CompanyID", "cid","companyname","date","address","state" };
            object[] values = new object[] { c.Cid,c.Companyid ,c.Companyname,c.Date,c.Address,c.State };

            return DataAccess.DA.ExecuteSQL("spr_UpdateApplications", CommandType.StoredProcedure, names, values);
        }
        public static int UpdateLogin(Entity.Logine l)
        {
            string[] names = new string[] { "ID", "Password"};
            object[] values = new object[] {l.Id, l.Password};

            return DataAccess.DA.ExecuteSQL("spr_UpdateLogin", CommandType.StoredProcedure, names, values);
        }

        public static int DeleteMessages(Entity.Company c)
        {
            string[] names = new string[] { "Companyid"};
            object[] values = new object[] { c.Companyid};

            return DataAccess.DA.ExecuteSQL("spr_DeleteMessages", CommandType.StoredProcedure, names, values);
        }

        public static int DeleteStudent(Entity.Student s)
        {
            string[] names = new string[] { "Studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.ExecuteSQL("spr_DeleteStudent", CommandType.StoredProcedure, names, values);
        }
        public static int AddMessages(Entity.Company c)
        {
            string[] names = new string[] { "Companyid", "Companyname", "Messages" };
            object[] values = new object[] { c.Companyid, c.Companyname, c.Messages };

            return DataAccess.DA.ExecuteSQL("spr_AddMessages", CommandType.StoredProcedure, names, values);
        }

        public static int AddNewStudent(Entity.Student s)
        {
            string[] names = new string[] { "StudentID", "StudentName", "EnterYear", "GradYear","Class", "SchoolID", "SchoolName", "birthday","Age", "DestinationID", "DestinationName", "genderid", "gender", "phone", "address", "postcode", "email", "StuImageUrl", "CompanyID", "ContractID", "Audit" };
            object[] values = new object[] { s.Studentid, s.Studentname, s.Enteryear, s.Gradyear, s.Class,s.Schoolid,s.Schoolname,s.Birthday,s.Age,s.Destinationid,s.DestinationName, s.Genderid,s.Gender,s.Phone, s.Address, s.Postcode, s.Email, s.Stuimageurl,s.Companyid,s.Contractid,s.Audit };

            return DataAccess.DA.ExecuteSQL("spr_AddNewStudent", CommandType.StoredProcedure, names, values);
        }

        public static int AddStudent(Entity.Student s)
        {
            string[] names = new string[] { "StudentID", "StudentName", "EnterYear", "GradYear",  "DestinationName",  "phone", "address", "postcode", "email", "StuImageUrl" };
            object[] values = new object[] { s.Studentid, s.Studentname, s.Enteryear, s.Gradyear, s.DestinationName, s.Phone, s.Address, s.Postcode, s.Email, s.Stuimageurl };

            return DataAccess.DA.ExecuteSQL("spr_AddStudent", CommandType.StoredProcedure, names, values);
        }
        public static int AddNewUser(Entity.Logine l)
        {
            string[] names = new string[] { "ID", "Password", "RoleID" };
            object[] values = new object[] { l.Id,l.Password,l.Roleid };

            return DataAccess.DA.ExecuteSQL("spr_AddNewUser", CommandType.StoredProcedure, names, values);
        }

        public static int AddDeleteStudent(Entity.Student s)
        {
            string[] names = new string[] { "StudentID", "StudentName", "EnterYear", "GradYear", "Class", "SchoolID", "birthday", "Age", "DestinationID", "gender", "phone", "address", "postcode", "email", "StuImageUrl" };
            object[] values = new object[] { s.Studentid, s.Studentname, s.Enteryear, s.Gradyear, s.Class, s.Schoolid,s.Birthday, s.Age, s.Destinationid, s.Gender, s.Phone, s.Address, s.Postcode, s.Email, s.Stuimageurl};

            return DataAccess.DA.ExecuteSQL("spr_AddDeleteStudent", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectViewStudentbyStudentName(Entity.Student s)
        {
            string[] names = new string[] {"studentname" };
            object[] values = new object[] { s.Studentname};

            return DataAccess.DA.GetDataTable("SelectViewStudentbyStudentName", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectViewcompanybycompanyName(Entity.Company c)
        {
            string[] names = new string[] { "companyname" };
            object[] values = new object[] { c.Companyname};

            return DataAccess.DA.GetDataTable("spr_SelectViewcompanybycompanyName", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectViewStudentbyStudentID(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetDataTable("spr_SelectViewStudentbyStudentID", CommandType.StoredProcedure, names, values);
        }
         public static DataTable SelectCompanybyCID(Entity.Company c)
        {
            string[] names = new string[] { "companyid" };
            object[] values = new object[] { c.Companyid };

            return DataAccess.DA.GetDataTable("spr_SelectCompanybyCID", CommandType.StoredProcedure, names, values);
        }

        public static int DeleteUser(Entity.Logine l)
        {
            string[] names = new string[] { "ID"};
            object[] values = new object[] { l.Id};

            return DataAccess.DA.ExecuteSQL("DeleteUser", CommandType.StoredProcedure, names, values);
        }
        public static object CountTotal(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_counttotal", CommandType.StoredProcedure, names, values);
        }
        public static object CountunEmployed(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_countunemployed", CommandType.StoredProcedure, names, values);
        }
        public static object CountEmployed(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_countemployed", CommandType.StoredProcedure, names, values);
        }
        public static object Countinp(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_countinp", CommandType.StoredProcedure, names, values);
        }

        public static object Countout(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_countoutp", CommandType.StoredProcedure, names, values);
        }
        public static object Countadin(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_countadin", CommandType.StoredProcedure, names, values);
        }

        public static object Countadout(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_countadout", CommandType.StoredProcedure, names, values);
        }
        public static object Countoutb(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_countoutb", CommandType.StoredProcedure, names, values);
        }

        public static object Countfree(Entity.Student s)
        {
            string[] names = new string[] { "studentid" };
            object[] values = new object[] { s.Studentid };

            return DataAccess.DA.GetOneData("spr_countfree", CommandType.StoredProcedure, names, values);
        }
       
    }
}
