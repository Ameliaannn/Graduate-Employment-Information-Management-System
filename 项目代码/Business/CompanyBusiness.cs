using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//
using Entity;
using DataAccess;
using System.Data;

namespace Business
{
    public static class CompanyBusiness
    {
        public static object GetCompanyNameByID(Entity.Company c)
        {
            string[] names = new string[] { "companyid" };
            object[] values = new object[] { c.Companyid };

            return DataAccess.DA.GetOneData("spr_GetCompanyNameByID", CommandType.StoredProcedure, names, values);
        }
        public static object CountMessages(Entity.Company c)
        {
            string[] names = new string[] { "companyid" };
            object[] values = new object[] { c.Companyid };

            return DataAccess.DA.GetOneData("spr_CountMessages", CommandType.StoredProcedure, names, values);
        }
        public static object CountApplications(Entity.Company c)
        {
            string[] names = new string[] { "companyid" };
            object[] values = new object[] { c.Companyid };

            return DataAccess.DA.GetOneData("spr_CountApplications", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectCompanybyCID2(Entity.Company c)
        {
            string[] names = new string[] { "companyid" };
            object[] values = new object[] { c.Companyid };

            return DataAccess.DA.GetDataTable("spr_SelectCompanybyCID2", CommandType.StoredProcedure, names, values);
        }
        public static int UpdateCompany(Entity.Company c)
        {
            string[] names = new string[] { "cid","CompanyId", "address", "CimageUrl", "post", "CompanyName"};
            object[] values = new object[] { c.Cid,c.Companyid,c.Address,c.Cimageurl,c.Post,c.Companyname};

            return DataAccess.DA.ExecuteSQL("spr_UpdateCompany", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SelectViewApplications()
        {
            string[] names = new string[] { "tablename" };
            object[] values = new object[] { "view_Applications" };

            return DataAccess.DA.GetDataTable("spr_SelectXTable", CommandType.StoredProcedure, names, values);
        }

        public static int AddApplications(Entity.Company c)
        {
            string[] names = new string[] { "cid", "CompanyId", "cname", "date", "address","state"};
            object[] values = new object[] { c.Cid,c.Companyid,c.Companyname,c.Date,c.Address,c.State };

            return DataAccess.DA.ExecuteSQL("spr_AddApplications", CommandType.StoredProcedure, names, values);
        }
    }
}
