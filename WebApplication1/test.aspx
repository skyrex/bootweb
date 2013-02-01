<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebApplication1.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="table table-striped table-bordered table-condensed">
        <thead>
          <tr>
            <th></th>
            <th colspan="2">产品信息设置</th>
            <th></th>
          </tr>
          <tr>
            <th>产品编号</th>
            <th>产品名称</th>
            <th>产品类型</th>
            <th>产品信息</th>
            <th>产品价格</th>
            <th>产品表述</th>
            <th>产品图片</th>
            <th>是否下架</th>
          </tr>
        </thead>
        <tbody>
                         <asp:Repeater ID="repeat" runat="server">
                                       <ItemTemplate>
                                       <tr>
                                            <td><%#DataBinder.Eval(Container.DataItem,"productid")%></td>
                                            <td><%#DataBinder.Eval(Container.DataItem,"productname")%></td>
                                            <td><%#DataBinder.Eval(Container.DataItem,"producttype")%></td>
                                            <td><%#DataBinder.Eval(Container.DataItem,"productinformation")%></td>
                                            <td><%#DataBinder.Eval(Container.DataItem,"productprice")%></td>
                                            <td><%#DataBinder.Eval(Container.DataItem,"productdescription")%> </td>
                                            <td><%#DataBinder.Eval(Container.DataItem,"productpicture")%> </td>
                                            <td><%#DataBinder.Eval(Container.DataItem,"visible")%></td>
                                        </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                        <tr>
                                            <td><asp:TextBox ID="txtproductid" runat="server"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtproductname" runat="server"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtproducttype" runat="server"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtproductinformation" runat="server"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtproductprice" runat="server"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtproductdescription" runat="server"></asp:TextBox> </td>
                                            <td><asp:TextBox ID="txtproductpicture" runat="server"></asp:TextBox></td>
                                            <td><asp:TextBox ID="txtvisible" runat="server"></asp:TextBox></td>
                                        </tr>
        </tbody>
      </table>
        <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
