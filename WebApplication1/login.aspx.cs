using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                this.txtUserName.Text="";
                this.txtPassword.Text="";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String userName=txtUserName.Text.Trim();
            String password=txtPassword.Text.Trim();
            if (userName != null && txtPassword != null)
            {
                if (userName == "1" && password == "1")
                {
                    if (!this.chkRememberMe.Checked)
                    { 
                        //cookie写入
                    }
                    Response.Redirect("Webform1.aspx");
                }
                else
                {
                    System.Console.Write("用户信息不对");
                }
            }
            else
            {
                System.Console.Write("请填写信息");
                //如果为空前台直接判断
            }
        }
    }
}