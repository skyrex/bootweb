using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class productadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(txtProductId.Text.ToString().Trim());
            String productname = txtProductName.Text.ToString().Trim();
            String producttype = txtProductType.Text.ToString().Trim();
            String productinfo = txtProductInfo.Text.ToString().Trim();
            int productprice = int.Parse(txtProductPrice.Text.ToString().Trim());
            String productdescription = txtProductDescription.Text.ToString().Trim();
            String productpic = txtProductPicture.Text.ToString().Trim();
            int isvisible = int.Parse(txtVisible.Text.ToString().Trim());
            String strInsert = "insert into Product_info values(" + productid + ",'" + productname + "','" + producttype + "','" + productinfo + "'," + productprice + ",'" + productdescription + "','" + productpic + "'," + isvisible + ")";
            int rows = SqlHelper.ExecuteNonQuery(strInsert);
            
            Response.Redirect("test.aspx");
        }
    }
}