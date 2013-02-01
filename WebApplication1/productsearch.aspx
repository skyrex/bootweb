<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productsearch.aspx.cs" Inherits="WebApplication1.productsearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

  <form class="form-horizontal" id="form1" runat="server">
      <div id="legend">
        <h1>Form Name</h1>
      </div>
    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">搜索条件</label>
          <div class="controls">
            <asp:TextBox ID="txtProductId" CssClass="input-xlarge" runat="server"></asp:TextBox>
              <label class="control-label" for="input01">
              </label>
          &nbsp;<p class="help-block">请输入商品名称</p>
          </div>
        </div>

    <div class="control-group">
          <label class="control-label">搜索</label>

          <!-- Button -->
          <div class="controls">
            <asp:Button ID="btnSearch" CommandName="submit" CssClass="btn undefined" runat="server" Text="搜索" OnClick="btnSearch_Click" />
            <button type="submit" class="btn undefined">搜索2</button>
          </div>
        </div>
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
        </tbody>
      </table>

      </div>
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  </form>

</body>
</html>
