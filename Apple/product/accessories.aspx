<%@ Page Title="Accessories" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="accessories.aspx.cs" Inherits="Assignment.product.accessories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link href="../assets/css/accessories.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/function.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="header">
        <div>
            <h2>Mix. Match. MagSafe.</h2>
            <p>Snap on a case, wallet, wireless charger or battery pack.</p>
            <a href="../cart/cart.aspx">Shop Magsafe ></a>
        </div>
        <img src="../assets/images/magsafe.jfif">
    </div>

    <hr style="width: 60%;margin: 5px auto;opacity: 50%;">

    <div class="products">
        <h1>Featured Apple Accessories</h1>
        <div class="product-list">
            <div class="row-container">
                <div class="column-container-25">
                    <img src="../assets/images/applepencil1.png">
                    <p>Apple Pencil</p>
                </div>
                <div class="column-container-75">
                    <img src="../assets/images/magickeyboard.png">
                    <p>Magic Keyboard</p>
                </div>
            </div>
            <div class="row-container">
                <div class="column-container-33">
                    <img src="../assets/images/smartkeyboard.png">
                    <p>Smart Keyboard</p>
                </div>
                <div class="column-container-33">
                    <img src="../assets/images/smartcover.png">
                    <p>Smart Cover</p>
                </div>
                <div class="column-container-33">
                    <img src="../assets/images/smartfolio.png">
                    <p>Smart Folio</p>
                </div>
            </div>
        </div>
        <div class="product-list">
            <div class="row-container">
                <div class="column-container-75">
                    <img src="../assets/images/xdr.png">
                    <p>Apple Pro Display XDR</p>
                </div>
                <div class="column-container-25">
                    <img src="../assets/images/magsafe.png">
                    <p>MageSafe</p>
                </div>
            </div>
            <div class="row-container">
                <div class="column-container-33">
                    <img src="../assets/images/cable.png">
                    <p>Power & Cable</p>
                </div>
                <div class="column-container-33">
                    <img src="../assets/images/airtag.png">
                    <p>Airtag</p>
                </div>
                <div class="column-container-33">
                    <img src="../assets/images/sololoopband.png">
                    <p>Solo Loop Band</p>
                </div>
            </div>
        </div>
    </div>

    <div class="banner">
        <div>
            <h2>Apple Accessories</h2>
            <p>Get accessories to enhant your product now.</p>
            <a href="../cart/cart.aspx">Shop Accessories ></a>
        </div>
        <img src="../assets/images/accessories_hero.png">
    </div>
</asp:Content>
