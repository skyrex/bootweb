using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String userName = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                String password = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                //bool isChecked = Request.QueryString["checked"];
                String loginName = Request.QueryString["username"].ToString();

                String loginPassword = Request.QueryString["password"].ToString();

                    if (userName == loginName && password == loginPassword)
                    {

                        Response.Redirect("fluid.html");
                    }
                    else
                    {
                         Response.Redirect("text.html");
                    }
                }
            }
    }
}