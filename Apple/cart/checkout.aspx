<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Assignment.cart.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/checkout.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/checkout.js" defer></script>
     <script src="https://js.braintreegateway.com/web/dropin/1.39.1/js/dropin.js"></script>
    <script src="https://js.braintreegateway.com/web/3.97.0/js/google-payment.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
      input::-webkit-outer-spin-button,
      input::-webkit-inner-spin-button {
         -webkit-appearance: none;
      }
      .validator{
            font-size:12px;
            position:relative;
        }
   </style>
    <div class="row">
        <div class="input-col">
            <div class="form-container">
                <form id="checkoutform" runat="server">

                    <div class="row">
                        <div class="ship-col page">
                            <h3>Shipping Address</h3>
                            <label for="fname">Full Name*</label>
                            <asp:TextBox ID="fname" runat="server" placeholder="E.g. Teoh Yong Sen"/>
                            <label for="email"> Email*</label>
                            <asp:TextBox ID="email" TextMode="Email" runat="server" placeholder="E.g. teoh@example.com"/>
                            <label for="adr">Address*</label>
                            <asp:TextBox ID="adr" runat="server" placeholder="E.g. ABC Apartment Block C-1-2" />
                            <label for="city">City*</label>
                            <asp:TextBox ID="city" runat="server" placeholder="E.g. Ipoh"/>
                            <div class="row">
                                <div class="full-col">
                                    <label for="state">State*</label>
                                    <asp:DropDownList ID="state" runat="server" DataSourceID="SqlDataSource1" DataTextField="State_Name" DataValueField="State_Name" OnSelectedIndexChanged="IndexChanged"/>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand= "Select * from State"></asp:SqlDataSource>
                                </div>
                                <div class="full-col">
                                    <label for="pos">Postal Code*</label>
                                    <asp:TextBox ID="pos" runat="server" TextMode="Number" placeholder="E.g. 52300"/>
                                                                  
                                </div>
                            </div>
                        </div>

                        <div class="payment-col page">
                            <h3>Payment</h3>
                            <div id="dropin-container"></div>
                      
                        </div>
                         <asp:HiddenField ID="payment_method_nonce" runat="server" />
                        <asp:HiddenField ID="total_amount" runat="server" />
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldAddress" runat="server"  ControlToValidate="adr" ErrorMessage="Please Enter Your Address"  CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                                    <asp:RequiredFieldValidator ID="RequiredFieldCity" runat="server"  ControlToValidate="city" ErrorMessage="Please Enter Your City"  CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                                    <asp:RequiredFieldValidator ID="RequiredFieldState" runat="server"  ControlToValidate="state" ErrorMessage="Please Enter Your State"  CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                                 
                    <input type="button" class="btn" id="prev" value="Previous Page" onclick="nextPrev(-1)" />
                    <input type="button" class="btn" id="next" value="Next Page" onclick="nextPrev(1)" />
                    <asp:Button ID="submitbutton" runat="server" Text="Confirm Payment" class="btn" OnClick="submitbutton_Click" OnClientClick="this.disabled=true;" UseSubmitBehavior="false"/>
                    <div style="text-align:center;margin-top:40px;">
                        <span class="step"></span>
                        <span class="step"></span>
                    </div>

                </form>
            </div>
        </div>
     
        <div class="cart-col">
            <div class="cart-container">
                <!--Whoe purchased items here>-->
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
        </div>
        </div>

</asp:Content>
