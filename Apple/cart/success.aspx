<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="Assignment.cart.success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Success</title>
    <link href="../assets/css/checkout.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/checkout.js" defer></script>
    <script>
        function clearStorage() {
            localStorage.clear(); //clear local storage
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" style="font-size: x-large">
        <div>
            <strong>Payment Success</strong></div>
        <p style="font-size: small">Thanks for purchasing !!!</p>
                            
                    <div class="cart-col">
            <div class="cart-container" style="width:40%">
                <!--Whole purchased items here>-->
                              <h4>Cart <span class="price" style="color:black"><img src="../assets/images/shop.png" alt="shopping bag" class = "shop"> <b><asp:Label ID="TotalItemLabel" runat="server"/></b></span></h4>
              <p>Total: <b><asp:Label ID="TotalLabel" runat="server" class="price" style="color:black;"/></b></p>
              <hr>
            <asp:Repeater ID="CartItemList" runat="server">
                <ItemTemplate>
            <div class = "item-container">
            <div class = "product-container">
                <asp:Image ID="Image" runat="server" ImageUrl='<%# Eval("Image") %>' AlternateText='<%# Eval("VariantName") %>'/>
                <p><%#Eval("VariantName") %> <small>x <%# Eval("Quantity") %></small></p>
                <div class="price-container">
                    <asp:Label ID="Subtotal" runat="server" class="price" />
                    <span class="price"><%#decimal.Parse(Eval("Price").ToString()) * decimal.Parse(Eval("Quantity").ToString())%></span> 
                </div>
            </div>
        </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
            <asp:button ID="HomeButton" runat="server" class="btn" style="width:30%" Text="Proceed to home" OnClick="HomeButton_Click"/>
        </div>
    </form>
</body>
</html>
