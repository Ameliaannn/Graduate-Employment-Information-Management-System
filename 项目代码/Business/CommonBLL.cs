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
    public static class CommonBLL
    {
        public static object LoginCheck(Entity.Logine l)
        {
            string[] names = new string[] { "id", "password" };
            object[] values = new object[] { l.Id, l.Password };

            return DataAccess.DA.GetOneData("spr_LoginCheck", CommandType.StoredProcedure, names, values);
        }
        public static int Updateuserpwd(Entity.Logine l)
        {
            string[] names = new string[] { "ID", "password"};
            object[] values = new object[] {l.Id,l.Password};

            return DataAccess.DA.ExecuteSQL("spr_updateuserpwd", CommandType.StoredProcedure, names, values);
        }
    }
}
