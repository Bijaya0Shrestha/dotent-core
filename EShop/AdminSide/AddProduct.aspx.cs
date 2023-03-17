using EShop.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace EShop.AdminSide
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddP_Click(object sender, EventArgs e)
        {

            EShop_dao obj = new EShop_dao();
            var productname = pname.Text;
            var Price = price.Text;
            var description = textdesc.Text;

            string filepath = Server.MapPath("/image");
            string filename = Path.GetFileName(imageUpload.FileName);
            String extension = Path.GetExtension(filename);
            HttpPostedFile pfile = imageUpload.PostedFile;
            int size = pfile.ContentLength;

            if(imageUpload.HasFile == true)
            {
                if(extension.ToLower() == ".jpeg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpg")
                {
                     if(size <= 1000000)
                    {
                        //saves file in directed image folder
                        imageUpload.SaveAs(filepath + filename);
                        //path2 is used to send the path and filename in database
                        string path2 = "/image" + filename;

                        string sql = "EXEC Insert_product @flag='InsertProduct'";
                        sql = sql + ",@Pname ='" + productname + "'";
                        sql = sql + ",@Price='" + Price + "'";
                        sql = sql + ",@image='" + path2 + "'";
                        sql = sql + ",@description='" + description + "'";
                         DataSet ds = obj.ExecuteDataSet(sql);
                        DataTable dt = ds.Tables[0];

                        var code = ds.Tables[0].Rows[0]["code"].ToString();
                        var msg = ds.Tables[0].Rows[0][1].ToString();


                        if (code == "0")
                        {
                            showAlert("Data Insert sucessfully");
                            Response.Redirect("/AdminSide/ProductManage.aspx");
                        }
                        else
                        {
                            showAlert(msg);
                        }

                    }
                    else
                    {
                        //lenght should be 1 mb
                        Response.Write("<Script>alert('Size should be 1mb.')</script>");
                    }


                }
                else
                {
                    //extensionFormat is not  matched
                    Response.Write("<Script>alert('ExtensionFormat isn't Supported')</script>");
                }


            }
            else
            {

                Response.Write("<Script>alert('File is not found')</script>");
            }
        }
        public void showAlert(string message)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + message + "')</script>");
        }

      

        protected void UpdateP_Click(object sender, EventArgs e)
        {

        }
    }

}