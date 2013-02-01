<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:TextBox ID="txtUserName" runat="server"/>
        <br/>
        <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"/>
        <br/>
        <asp:CheckBox ID="chkRememberMe" runat="server" Text="记住登录状态" />
        <br/>
        <asp:Button ID="btnLogin" runat="server" Text="登陆" OnClick="btnLogin_Click" />
    </form>
</body>
</html>
