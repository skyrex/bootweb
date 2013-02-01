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
    public partial class productsearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                String flag = txtProductId.Text.ToString().Trim();
                String strSearch = "select * from product_info where productname='" + flag + "'";

                DataSet ds = new DataSet();
                ds = SqlHelper.ExecuteDataSet(strSearch);
                repeat.DataSource = ds.Tables[0];
                repeat.DataBind();
                Label1.Text = strSearch;

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String flag = txtProductId.ToString().Trim();
            String strSearch = "select * from product_info where productname='"+flag+"'";

            DataSet ds = new DataSet();
            ds = SqlHelper.ExecuteDataSet(strSearch);
            repeat.DataSource = ds.Tables[0];
            repeat.DataBind();
            //Response.Redirect(Request.Url.ToString());
        }
    }
}