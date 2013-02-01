using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //string s = System.Configuration.ConfigurationManager.AppSettings["connString"].ToString();
                //System.Console.Write(s);

                String strSearch = "select * from product_info";
                DataSet ds = new DataSet();
                ds = SqlHelper.ExecuteDataSet(strSearch);
                repeat.DataSource = ds.Tables[0];
                repeat.DataBind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(txtproductid.Text.ToString().Trim());
            String productname = txtproductname.Text.ToString().Trim();
            String producttype = txtproducttype.Text.ToString().Trim();
            String productinfo = txtproductinformation.Text.ToString().Trim();
            int productprice = int.Parse(txtproductprice.Text.ToString().Trim());
            String productdescription = txtproductdescription.Text.ToString().Trim();
            String productpic = txtproductpicture.Text.ToString().Trim();
            int isvisible = int.Parse(txtvisible.Text.ToString().Trim());
            String strInsert = "insert into Product_info values("+productid+",'"+productname+"','"+producttype+"','"+productinfo+"',"+productprice+",'"+productdescription+"','"+productpic+"',"+isvisible+")";

            int rows = SqlHelper.ExecuteNonQuery(strInsert);
            Label1.Text = rows.ToString();
            Response.Redirect(Request.Url.ToString()); 
        }
    }
}