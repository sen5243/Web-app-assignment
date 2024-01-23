<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmOrders.aspx.cs" Inherits="WebApplication1.ConfirmOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <b> ORDER DETAILS PAGE</b><br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select Order_Detail.Order_No,Orders.Total_Amount,Order_Detail.SubTotal,Order_Detail.Quantity,Product.Product_ID,Product_Variant.Variant_Name,Product_Variant.Unit_Price FROM Orders,Order_Detai,Product_Variant,Product WHERE Orders.Order_No = Order_Detail.Order_No AND Order_Detail.Product_ID = Product_Variant.Product_ID AND Order_Detail.Variant_ID = Product_Variant.Variant_ID AND Order_Detail.Product_ID = Product.Product_ID and Orders.Order_No = @Order_No">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Order_No" QueryStringField="Order_No" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Height="50px" Width="231px">
            </asp:DetailsView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
