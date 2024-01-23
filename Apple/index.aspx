<%@ Page Title="Apple Product" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Assignment.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="<%=ResolveClientUrl("assets/javascript/star.js")%>" defer></script>
        <script src="<%=ResolveClientUrl("assets/javascript/splash.js")%>" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="splash">
        <img class="intro image" src="assets/images/while_apple_icon.png">
        <p class="intro">Think different</p>
    </div>
    <div class="dark-body parallax">
        <img class="dark-hero breath" src="assets/images/apple-hero.png">

        <p>Discover the innovative world of Apple and shop everything.</p>
    </div>
    <div class="air-container parallax">
        <img class="new-air breath show bottom" src="assets/images/iPad_air-removebg.png">
        <img class="new-air-2 breath show bottom" src="assets/images/iPad_air_vertical-removebg.png">
        <p id="air" class="show left">Introducing the new iPad Air 5</p>
        <div class="show zoom">
            <p id="introduction">Light. Bright.<br> Full of might.</p>
        </div>
    </div>
    <div class="iphone13 show bottom">
        <div class="iphone13-intro">
            <h2 id="iphone13-header">iPhone 13 Pro</h2>
            <h3 id="iphone13-subheader">Now in Alpine Green.</h3>
            <p id="iphone13-text">Pre-order in Alpine Green starting at 9 am MYT on 18 March</p>
            <p id="iphone13-text">Available starting 25 March</p>
            <img src="assets/images/dual-iphone13.png" class="iphone13-green show bottom">
        </div>
    </div>
    <div class="iphone-se show bottom">
        <div class="iphone-se-intro show left">
            <h2 id="iphone-se-header">The new</h2>
            <img class="iphone-se-logo" src="assets/images/IPhone_SE_logo.png">
            <h3 id="iphone-se-subheader">Love the power. Love the value.</h3>
            <p id="iphone-se-text">Pre-order starting at 9 am MYT on 18 March</p>
            <p id="iphone-se-text">Available starting 25 March</p>
        </div>
        <div class="iphone-se-image-container show right">
            <img class="iphone-se-phone" src="assets/images/IPhone_SE.png">
        </div>
    </div>
    <div class="categories">
        <div class="first-row">
            <div id="first-box" class="show left">
                <div class="blur">
                    <a href="product/product.aspx" class="category">Products</a>
                </div>
            </div>
            <div id="second-box" class="show right">
                <div class="blur">
                    <a href="support/support.aspx">Support</a>
                </div>
            </div>
        </div>
        <div class="second-row">
            <div id="third-box" class="show left">
                <div class="blur">
                    <a href="about.aspx">About Us</a>
                </div>
            </div>
            <div id="fourth-box" class="show right">
                <div class="blur">
                    <a href="career.aspx">Join Us</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
