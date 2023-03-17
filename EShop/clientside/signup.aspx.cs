using EShop.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.clientside
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            var user = userName.Text;
            var password = pwd.Text;
            var cpassword = cpwd.Text;
            EShop_dao obj = new EShop_dao();
            string sql = "EXEC clientInsert @flag='cInsert'";
            sql = sql + ",@userName='" + user + "'";
            sql = sql + ",@pwd='" + password + "'";
            sql = sql + ",@cpwd='" + cpassword + "'";

            DataSet ds = obj.ExecuteDataSet(sql);
            DataTable dt = ds.Tables[0];

            var code = dt.Rows[0]["code"].ToString();
            var message = dt.Rows[0][1].ToString();
            if (code == "0")
            {
                ShowAlert(message);
                Response.Redirect("clientIndex.aspx");
            }
            else
            {
                ShowAlert(message);
            }
        }
        public void ShowAlert(string msg)
        {
            Page.ClientScript.RegisterStartupScript
           (this.GetType(), "", "<script> alert('" + msg + "') </script>");
        }
    }
    
}