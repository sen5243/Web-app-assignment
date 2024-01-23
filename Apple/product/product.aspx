<%@ Page Title="Products" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Assignment.product.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/product.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Our Products</h1>
    <div class="products">
        <div class="row-container">
            <a href="iphone.aspx">
                <img src="../assets/images/product-iphone.png" id="iphone">
                <p>iPhone</p>
            </a>
            <a href="ipad.aspx">
                <img src="../assets/images/product-ipad.png" id="ipad">
                <p>iPad</p>
            </a>
            <a href="mac.aspx">
                <img src="../assets/images/product-mac.png" id="mac">
                <p>Mac</p>
            </a>
            <a href="airpod.aspx">
                <img src="../assets/images/product-airpod.png" id="airpod">
                <p>AirPod</p>
            </a>
        </div>
        <div class="row-container-2">
            <a href="watches.aspx">
                <img src="../assets/images/product-watches.png" id="watches">
                <p>Watches</p>
            </a>
            <a href="tv.aspx">
                <img src="../assets/images/product-tv.png" id="tv">
                <p>Apple TV</p>
            </a>
            <a href="accessories.aspx">
                <img src="../assets/images/product-accessories.png" id="accessories">
                <p>Accessories</p>
            </a>
        </div>
    </div>
</asp:Content>
