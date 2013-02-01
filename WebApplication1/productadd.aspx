<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productadd.aspx.cs" Inherits="WebApplication1.productadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <title></title>
</head>
<body>

  <form class="form-horizontal" id="form1" runat="server">

      <div id="legend">
        <h1>Form Name</h1>
      </div>

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">商品名称</label>
          <div class="controls">
            <asp:TextBox CssClass="input-xlarge" ID="txtProductName" runat="server"></asp:TextBox>
            <p class="help-block"></p>
          </div>
    </div>
    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">商品编号</label>
          <div class="controls">
            <asp:TextBox CssClass="input-xlarge" ID="txtProductId" runat="server"></asp:TextBox>
            <p class="help-block"></p>
          </div>
    </div>
    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">商品类型</label>
          <div class="controls">
            <asp:TextBox CssClass="input-xlarge" ID="txtProductType" runat="server"></asp:TextBox>
            <p class="help-block"></p>
          </div>
    </div>
    <div class="control-group">

          <!-- Text input-->
          <label class="control-label">商品信息</label>
          <div class="controls">
            <asp:TextBox CssClass="input-xlarge" ID="txtProductInfo" runat="server"></asp:TextBox>
            <p class="help-block"></p>
          </div>
    </div>

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">商品价格</label>
          <div class="controls">
            <asp:TextBox CssClass="input-xlarge" ID="txtProductPrice" runat="server"></asp:TextBox>
            <p class="help-block"></p>
          </div>
        </div>

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label">商品备注</label>
          <div class="controls">
            <asp:TextBox CssClass="input-xlarge" ID="txtProductDescription" runat="server"></asp:TextBox>
            <p class="help-block"></p>
          </div>
        </div>

    <div class="control-group">
          <label class="control-label">商品图片</label>
            <div class="controls">
            <asp:TextBox CssClass="input-xlarge" ID="txtProductPicture" runat="server"></asp:TextBox>
            <p class="help-block"></p>
          </div>
        </div>

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label">是否上架</label>
          <div class="controls">
            <asp:TextBox CssClass="input-xlarge" ID="txtVisible" runat="server"></asp:TextBox>
            <p class="help-block"></p>
          </div>

        </div>

    <div class="control-group">
          <label class="control-label">提交</label>

          <!-- Button -->
          <div class="controls">
              <asp:Button CssClass="btn undefined" ID="btnSubmit" Text="提交" runat="server" OnClick="btnSubmit_Click" />
          </div>
        </div>


  </form>


</body>
</html>
