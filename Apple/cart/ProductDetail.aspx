<%@ Page Title="" Language="C#" MasterPageFile="../Assignment.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Not_Apple.view.products.WebForm1" %>
<asp:Content ID="ProductDetailHead" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.css" />
    <script src="../assets/javascript/cart-product.js" defer></script>
    <script src="../assets/javascript/cart.js" defer></script>
</asp:Content>

<asp:Content ID="ProductDetailBody" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container vh-100 w-75" style="padding-top:70px">
        <div class="row">
            <a href="cart.aspx">< Back to Menu</a>
        </div>
        <div class="row">
            <div class="col-md-6 d-flex justify-content-center align-items-center">
                <asp:Image ID="imgProduct" runat="server" ImageUrl ="../assets/images/test_images/blank-testing-image.jpg" class="img-fluid" style="max-width:80%;max-height:80%" />
            </div>
            <div class="col-md-6 mb-5 mt-5">
                <form id="AddtoCart" runat="server">
                    <asp:Label ID="lblProductName" runat="server" Text='Product Name: Iphone 13'/>
                    <br />
                    <asp:Label ID="lblVariantName" runat="server" Text='Variant Name: Iphone 13 Gold'/>
                    <div>
                        <h6><asp:Label ID="lblPrice" runat="server" Text="Unit Price: RM 4400.00"></asp:Label></h6>
                    </div>
                    
                    <div>
                        <asp:Label ID="lblStoce" runat="server" Text="999 in Stock" CssClass="text-muted"></asp:Label>
                    </div>

                    <hr />
                    <h6 class="mb-4">Options:</h6>

                    <div>
                        <div class="mb-5">

                            <div class="row">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Variant_Name" DataValueField="Variant_ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <h6 class="mb-4">Quantity:</h6>
                        <div class="mt-5">

                            <div class="row">
                                <asp:TextBox ID="txtQuantity" TextMode="Number" runat="server" Text="1"/>
                                <br />
                                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                            </div>
                        </div>
                    </div>
                    

                    <div class="d-flex justify-content-center align-items-center w-50 mt-5">
                        <asp:Button id="btnAddtoCart" runat="server" Text="Add to Cart" BorderStyle="Solid" CssClass="btn btn-primary btn-lg btn-block" OnClick="btnAddtoCart_Click" CommandName="AddToCart"/>  
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select Product_Variant.Product_ID,Product_Variant.Variant_ID,Product.Product_Name,Product_Variant.Variant_Name,Product_Variant.Image_Path,Product_Variant.Unit_Price, Product_Variant.Units_In_Stock FROM Product_Variant,Product,Variant WHERE Product_Variant.Product_ID = Product.Product_ID AND Product_Variant.Variant_ID = Variant.Variant_ID AND Product.Product_ID= @Product_ID">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="Product_ID" QueryStringField="Product_ID" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

