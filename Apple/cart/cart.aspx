<%@ Page Title="Shop" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Assignment.cart.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Shop</title>
    <link href="../assets/css/cart.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/cart-product.js" defer></script>
    <script src="../assets/javascript/cart.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <script>
                function checkoutClick() {
                    document.getElementById("ContentPlaceHolder1_checkoutButton").click();
                }
                function deleteClick() {
                    document.getElementById("ContentPlaceHolder1_CartItemList_Image").click();
                }

            </script>
    <form id="form1" runat="server">
    <div class="flex">

        <div class="products-list">

            <!-- render products here -->
            <div class="products-container">

                <div class="products-header" id="iphone">
                    <h2>
                        Iphone Series
                    </h2>
                    </div>

                     <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
                        
                   
                         <GroupTemplate>
                             <tr id="itemPlaceholderContainer" runat="server">
                                 <td id="itemPlaceholder" runat="server"></td>
                             </tr>
                         </GroupTemplate>
                         <ItemTemplate>
                             
                        <div class="item">
                            <div class="item-container">
                                <div class="item-img">
                                    <asp:ImageButton ID="Image_PathLabel" runat="server" ImageUrl='<%# Eval("Image_Path") %>' PostBackUrl='<%# Eval("Product_ID", "ProductDetail.aspx?Product_ID={0}") %>' ImageAlign="Middle"/>
                                </div>
                                <div class="desc">
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                    <p>
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </p>
                                </div>
                            </div>
                        </div>
                                 
                                 <br />
                         </ItemTemplate>
                    </asp:ListView>&nbsp;</div>



                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_ID],[Product_Name], [Description], [Image_Path] FROM [Product] WHERE Category_ID = 1;"></asp:SqlDataSource>

            <div class="ipad-container show left" id="ipad">
                <div class="products-header">
                    <h2>Ipad Series
                    </h2>
                </div>
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                                            <GroupTemplate>
                             <tr id="itemPlaceholderContainer" runat="server">
                                 <td id="itemPlaceholder" runat="server"></td>
                             </tr>
                         </GroupTemplate>
                         <ItemTemplate>
                             
                        <div class="item">
                            <div class="item-container">
                                <div class="item-img">
                                      <asp:ImageButton ID="Image_PathLabel" runat="server" ImageUrl='<%# Eval("Image_Path") %>' PostBackUrl='<%# Eval("Product_ID", "ProductDetail.aspx?Product_ID={0}") %>'/>
                                </div>
                                <div class="desc">
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                    <p>
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </p>
                                </div>
                            </div>
                        </div>
                                 
                                 <br />
                         </ItemTemplate>
                 </asp:ListView>



                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_ID],[Product_Name], [Description], [Image_Path] FROM [Product] WHERE Category_ID = 2;"></asp:SqlDataSource>



            </div>
            <div class="mac-container show left" id="mac">
                <div class="products-header">
                    <h2>Imac Series</h2>
                </div>
                    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                         <GroupTemplate>
                             <tr id="itemPlaceholderContainer" runat="server">
                                 <td id="itemPlaceholder" runat="server"></td>
                             </tr>
                         </GroupTemplate>
                         <ItemTemplate>
                             
                        <div class="item">
                            <div class="item-container">
                                <div class="item-img">
                                       <asp:ImageButton ID="Image_PathLabel" runat="server" ImageUrl='<%# Eval("Image_Path") %>' PostBackUrl='<%# Eval("Product_ID", "ProductDetail.aspx?Product_ID={0}") %>'/>
                                </div>
                                <div class="desc">
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                    <p>
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </p>
                                </div>
                            </div>
                        </div>
                                 
                                 <br />
                         </ItemTemplate>
                        </asp:ListView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_ID],[Product_Name], [Description], [Image_Path] FROM [Product] WHERE Category_ID = 3;"></asp:SqlDataSource>

            </div>
            <div class="accessories-container show left" id="accessories">
                <div class="products-header">
                    <h2>Accessories</h2>
                </div>
                <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
                         <GroupTemplate>
                             <tr id="itemPlaceholderContainer" runat="server">
                                 <td id="itemPlaceholder" runat="server"></td>
                             </tr>
                         </GroupTemplate>
                         <ItemTemplate>
                             
                        <div class="item">
                            <div class="item-container">
                                <div class="item-img">
                                       <asp:ImageButton ID="Image_PathLabel" runat="server" ImageUrl='<%# Eval("Image_Path") %>' PostBackUrl='<%# Eval("Product_ID", "ProductDetail.aspx?Product_ID={0}") %>'/>
                                </div>
                                <div class="desc">
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                    <p>
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </p>
                                </div>
                            </div>
                        </div>
                                 
                                 <br />
                         </ItemTemplate>
                        </asp:ListView>

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_ID],[Product_Name], [Description], [Image_Path] FROM [Product] WHERE Category_ID = 4;"></asp:SqlDataSource>


            </div>
            <div class="airpods-container show left" id="airpod">
                <div class="products-header">
                    <h2>Airpod Series</h2>
                </div>
                 <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5" GroupItemCount="3">
                         <GroupTemplate>
                             <tr id="itemPlaceholderContainer" runat="server">
                                 <td id="itemPlaceholder" runat="server"></td>
                             </tr>
                         </GroupTemplate>
                         <ItemTemplate>
                             
                        <div class="item">
                            <div class="item-container">
                                <div class="item-img">
                                       <asp:ImageButton ID="Image_PathLabel" runat="server" ImageUrl='<%# Eval("Image_Path") %>' PostBackUrl='<%# Eval("Product_ID", "ProductDetail.aspx?Product_ID={0}") %>'/>
                                </div>
                                <div class="desc">
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                    <p>
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </p>
                                </div>
                            </div>
                        </div>
                                 
                                 <br />
                         </ItemTemplate>
                        </asp:ListView>

                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_ID],[Product_Name], [Description], [Image_Path] FROM [Product] WHERE Category_ID = 5;"></asp:SqlDataSource>
            </div>
            <div class="watch-container show left" id="watch">
                <div class="products-header">
                    <h2>Apple Watch Series</h2>
                </div>
             <asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource6" GroupItemCount="3">
                         <GroupTemplate>
                             <tr id="itemPlaceholderContainer" runat="server">
                                 <td id="itemPlaceholder" runat="server"></td>
                             </tr>
                         </GroupTemplate>
                         <ItemTemplate>
                             
                        <div class="item">
                            <div class="item-container">
                                <div class="item-img">
                                      <asp:ImageButton ID="Image_PathLabel" runat="server" ImageUrl='<%# Eval("Image_Path") %>' PostBackUrl='<%# Eval("Product_ID", "ProductDetail.aspx?Product_ID={0}") %>'/>
                                </div>
                                <div class="desc">
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                    <p>
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </p>
                                </div>
                            </div>
                        </div>
                                 
                                 <br />
                         </ItemTemplate>
                        </asp:ListView>

                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_ID],[Product_Name], [Description], [Image_Path] FROM [Product] WHERE Category_ID = 6;"></asp:SqlDataSource>


            </div>

            <div class="macbook-container show left" id="macbook">
                <div class="products-header">
                    <h2>Macbook Series</h2>
                </div>
              <asp:ListView ID="ListView8" runat="server" DataSourceID="SqlDataSource8" GroupItemCount="3">
                         <GroupTemplate>
                             <tr id="itemPlaceholderContainer" runat="server">
                                 <td id="itemPlaceholder" runat="server"></td>
                             </tr>
                         </GroupTemplate>
                         <ItemTemplate>
                             
                        <div class="item">
                            <div class="item-container">
                                <div class="item-img">
                                      <asp:ImageButton ID="Image_PathLabel" runat="server" ImageUrl='<%# Eval("Image_Path") %>' PostBackUrl='<%# Eval("Product_ID", "ProductDetail.aspx?Product_ID={0}") %>'/>
                                </div>
                                <div class="desc">
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                    <p>
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </p>
                                </div>
                            </div>
                        </div>
                                 
                                 <br />
                         </ItemTemplate>
                        </asp:ListView>

                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_ID],[Product_Name], [Description], [Image_Path] FROM [Product] WHERE Category_ID = 9;"></asp:SqlDataSource>



            </div>

        </div>
        <div class="cart-container">
            <div class="cart-bag">
                <div class="item-num">
                    <!--show item num here-->
                    <asp:Label CssClass="num" ID="Label1" runat="server"/>
                </div>
                <img src="../assets/images/white-bag.png" alt="shopping-bag" onclick="showHideCart()">
            </div>
            <div class="cartItem-container">
                <div class="cart-header">
                    <div class="column1">Item</div>
                    <div class="column2">Unit price</div>
                    <div class="column3">Units</div>
                </div>

                <div class="cart-items">
                    <!-- render cart items here -->
                <asp:Repeater ID="CartItemList" runat="server">
                <ItemTemplate>
                <div class="cart-item">
                <div class="item-info" onclick="deleteClick()">
                <asp:ImageButton ID="Image" runat="server" ImageUrl='<%# Eval("Image") %>' CommandArgument='<%# Eval("ProductID")+"," +Eval("VariantID")%>' OnClick="RemoveCartItemButton_Click" Width="50px" AlternateText='<%# Eval("VariantName") %>'/>
                <h4><%#Eval("VariantName") %></h4>
                </div>
                <div class="unit-price">
                    <small>RM <%#Eval("Price") %></small>
                </div>
                <div class="units">
                
                <asp:Button class="btn deduct" runat="server" Text="-" CommandName="DecreaseQuantity" CommandArgument='<%#  Eval("ProductID")+"," +Eval("VariantID") %>' OnClick="DecreaseQuantityButton_Click" />
                 <div class="number"><%# Eval("Quantity") %></div>
                 <asp:Button class="btn add" runat="server" Text="+" CommandName="IncreaseQuantity" CommandArgument='<%#  Eval("ProductID")+"," +Eval("VariantID")%>' OnClick="IncreaseQuantityButton_Click" />          
                </div>
                </div>
                </ItemTemplate>
            </asp:Repeater>
                </div>
                <div class="cart-footer">
                    <div class="subtotal">
                        <p>Subtotal (<asp:Label ID="TotalItemLabel" runat="server"/> items):<asp:Label ID="TotalLabel" runat="server"/></p>
                    </div>
                    <div class="checkout" onclick="checkoutClick()">
                        <p>Proceed to checkout</p>
                    </div>
                    <asp:Button ID="checkoutButton" runat="server" style="display:none" OnClick="checkout"/>
                </div>
            </div>

        </div>
    </div>
    </form>

</asp:Content>
