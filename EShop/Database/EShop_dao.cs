using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace EShop.Database
{
    public class EShop_dao
    {
        SqlConnection conn;
        public EShop_dao()
        {
            conn = new SqlConnection(ConfigurationSettings.AppSettings["dbconn"].ToString());
        }

        public  DataSet ExecuteDataSet(string sql)
        {
            DataSet ds = new DataSet();

            SqlDataAdapter da = new SqlDataAdapter(sql, conn);

            da.Fill(ds);
            da.Dispose();
            return ds;


        }
    }
}