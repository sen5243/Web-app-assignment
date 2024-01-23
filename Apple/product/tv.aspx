<%@ Page Title="TV" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="tv.aspx.cs" Inherits="Assignment.product.tv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/tv.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tv-intro">
        <div class="logo">
            <img src="../assets/images/appletv.jpg" id="appletvlogo">
            <img src="../assets/images/appletvplus.png" id="appletvpluslogo">
        </div>
        <h2>All Apple Originals.</h2>
        <p>Exclusively on Apple TV+. Watch here and on the Apple TV app across your devices.</p>
    </div>

    <hr style="width: 80%;margin: auto;opacity: 50%;">

    <div class="list">
        <div class="most-popular">
            <h2>Most Popular Now</h2>
            <div class="most-popular-list">
                <img src="../assets/images/most-popular-1.jpg">
                <img src="../assets/images/most-popular-2.jpg">
                <img src="../assets/images/most-popular-3.jpg">
                <img src="../assets/images/most-popular-4.jpg">
            </div>
        </div>

        <hr style="width:60%;margin: 50px auto;opacity: 30%;">

        <div class="coming-soon">
            <h2>Coming Soon</h2>
            <div class="coming-soon-list">
                <img src="../assets/images/coming-soon-1.jpg">
                <img src="../assets/images/coming-soon-2.jpg">
                <img src="../assets/images/coming-soon-3.jpg">
                <img src="../assets/images/coming-soon-4.jpg">
            </div>
        </div>
    </div>
</asp:Content>
