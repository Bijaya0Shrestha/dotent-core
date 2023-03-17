using EShop.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EShop.AdminSide
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddA_Click(object sender, EventArgs e)
        {
            EShop_dao obj = new EShop_dao();

            var username = uname.Text;
             var password = password1.Text;

            string sql = "EXEC Admin_Insert @flag='InsertAdmin'";
            sql = sql + ",@userName='" + username + "'";
            sql = sql + ",@pwd='" + password + "'";


            DataSet ds = obj.ExecuteDataSet(sql);
            DataTable dt = ds.Tables[0];

            var code = ds.Tables[0].Rows[0]["code"].ToString();
            var msg = ds.Tables[0].Rows[0][1].ToString();
            if (code == "0")
            { 
                Response.Redirect("./AdminSide/ManageAdmin.aspx");
                showAlert(msg);
            }
            else
            {
                showAlert(msg);
            }
        }
        public void showAlert(string message)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + message + "')</script>");
        }

    }
}