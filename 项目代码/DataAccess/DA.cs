using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DataAccess
{
    public static class DA
    {
        static SqlConnection myconn;
        static SqlCommand scd;
        static SqlDataAdapter sda;
        static DA()
        {
            myconn = new SqlConnection();
            myconn.ConnectionString = ConfigurationManager.ConnectionStrings["SystemDBConn"].ConnectionString;
            scd = new SqlCommand();
            scd.Connection = myconn;
            sda = new SqlDataAdapter();
        }

        #region 执行非查询SQL命令，SQL有无参数均可
        /// <summary>
        /// 执行非查询SQL命令，SQL有无参数均可
        /// </summary>
        /// <param name="cmdtext">SQL命令文本</param>
        /// <param name="cmdtype">命令类型</param>
        /// <param name="names">参数名称列表</param>
        /// <param name="values">有参数名称对应的参数值列表</param>
        /// <returns>int类型，表示受影响的行数</returns>
        public static int ExecuteSQL(string cmdtext, CommandType cmdtype, string[] names, object[] values)
        {
            scd.CommandText = cmdtext;
            scd.CommandType = cmdtype;
            scd.Parameters.Clear();
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    scd.Parameters.AddWithValue(names[i], values[i]);
                }
            }
            if (myconn.State == ConnectionState.Closed)
            {
                myconn.Open();
            }
            int result = scd.ExecuteNonQuery();
            myconn.Close();
            return result;
        }
        #endregion

        #region 执行查命令，返回一个DataTable，有无参数均可
        /// <summary>
        /// 执行查询命令，返回一个DataTable，有无参数均可
        /// </summary>
        /// <param name="cmdtext">SQL命令文本</param>
        /// <param name="cmdtype">命令类型</param>
        /// <param name="names">参数名称列表</param>
        /// <param name="values">与参数名称对应的参数值列表</param>
        /// <returns>DataTable类型，表示获得的数据表或记录的集合</returns>
        public static DataTable GetDataTable(string cmdtext, CommandType cmdtype, string[] names, object[] values)
        {
            sda.SelectCommand = new SqlCommand();
            sda.SelectCommand.CommandText = cmdtext;
            sda.SelectCommand.CommandType = cmdtype;
            sda.SelectCommand.Connection = myconn;
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    sda.SelectCommand.Parameters.AddWithValue(names[i], values[i]);
                }
            }
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        #endregion

        #region 执行SQL命令，返回第一行第一列的值，SQL有无参数均可
        /// 执行查询命令，返回第一行第一列的值，SQL有无参数均可
        /// </summary>
        /// <param name="cmdtext">SQL命令文本</param>
        /// <param name="cmdtype">命令类型</param>
        /// <param name="names">参数名称列表</param>
        /// <param name="values">与参数名称对应的参数值列表</param>
        /// <returns>object类型，表示所得第一行第一列的值</returns>
        public static object GetOneData(string cmdtext, CommandType cmdtype, string[] names, object[] values)
        {
            scd.CommandText = cmdtext;
            scd.CommandType = cmdtype;
            scd.Parameters.Clear();
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    scd.Parameters.AddWithValue(names[i], values[i]);
                }
            }
            if (myconn.State == ConnectionState.Closed)
            {
                myconn.Open();
            }
            object result = scd.ExecuteScalar();
            myconn.Close();
            return result;
        }
        #endregion
    }
}
