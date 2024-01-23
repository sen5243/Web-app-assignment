<%@ Page Title="iPads" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="ipad.aspx.cs" Inherits="Assignment.product.ipad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../assets/css/ipad.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/ipad.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="section1">
        <div class="section1-info">
            <h6>New</h6>
            <h2>iPad</h2>
            <img src="../assets/images/air.png" alt="Air">
            <p class="slogan">Light. Bright. <br> Full of might.</p>
            <p class="price">From RM 2,699</p>
            <a href="../cart/cart.aspx" id="buynow">Buy Now</a><br>
            <a href="#ipadair" id="ipadair_a">Learn More ></a>
        </div>

        <img src="../assets/images/ipad_air.png" alt="iPad Air" class="image1">
    </div>

    <div style="background-color: black;">
        <hr style="color: white;width: 70%;margin: auto;opacity: 0.4;">
    </div>

    <div class="section2">
        <img src="../assets/images/ipadpro_black_white.jpg " alt="Ipad Pro " class="image2 ">

        <div class="section2-info ">
            <h2>iPad Pro</h2>
            <p class="slogan ">The Ultimate <br> iPad Experience.</p>
            <p class="price ">From RM 3,499</p>
            <a href="../cart/cart.aspx" id="buynow">Buy Now</a><br>
            <a href="#ipadpro" id="ipadpro_a">Learn More ></a>
        </div>
    </div>

    <div class="section3 ">
        <div class="section3-info ">
            <h2>iPad</h2>
            <p class="slogan ">Delightfully capable. <br> Surprisingly affordable.</p>
            <p class="price ">From RM 1,499</p>
            <a href="../cart/cart.aspx" id="buynow">Buy Now</a><br>
            <a href="#ipad" id="ipad_a">Learn More ></a>
        </div>

        <img src="../assets/images/ipad.jpg " alt="iPad " class="image3 ">
    </div>

    <div style="background-color: white; ">
        <hr style="color: black;width: 70%;margin: auto;opacity: 0.8; ">
    </div>

    <div class="section4 ">
        <div class="section4-info ">
            <h2>iPad Mini</h2>
            <p class="slogan ">Mega power. <br> Mini sized.</p>
            <p class="price ">From RM 2,299</p>
            <a href="../cart/cart.aspx" id="buynow">Buy Now</a><br>
            <a href="#ipadmini" id="ipadmini_a">Learn More ></a>
        </div>

        <img src="../assets/images/ipad-mini.jpg " alt="iPad Mini " class="image4 ">
    </div>

    <div style="background-color: white; ">
        <hr style="color: black;width: 70%;margin: auto;opacity: 0.8; ">
    </div>

    <div class="section5 ">
        <h2 class="section5-heading ">Which iPad is right for you?</h2>
        <div class="flex-table ">
            <div class="flex-container ">
                <!--iPad Pro-->
                <div class="row " id="ipadpro">
                    <div class="imgcol ">
                        <img src="../assets/images/ipadpro_compare.png " alt="iPad Pro compare ">
                    </div>
                    <h3>iPad Pro</h3>
                    <hr>
                    <div class="col ">
                        <h2>12.9” and 11”</h2>
                        <p>12.9” Liquid Retina XDR display <br> 11” Liquid Retina display</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/M1_chip_icon.png " alt="M1 Chip ">
                        <p>M1 Chip</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/ipadpro_camera_module.png ">
                        <p>12MP Wide and 10MP <br> Ultra Wide back cameras</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/usb-c_with_thunderbolt.png ">
                        <p>USB-C connector with support <br> for Thunderbolt / USB 4</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/5G_cellular.png ">
                        <p>5G cellular</p>
                    </div>
                </div>

                <!--iPad Air-->
                <div class="row " id="ipadair">
                    <div class="imgcol ">
                        <img src="../assets/images/ipadair_compare.png " alt="iPad Air compare ">
                    </div>
                    <h3>iPad Air</h3>
                    <hr>
                    <div class="col ">
                        <h2>10.9”</h2>
                        <p>Liquid Retina display</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/M1_chip_icon.png " alt="M1 Chip ">
                        <P>M1 Chip</P>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/ipadair_camera_module.png ">
                        <p>12MP Wide back camera</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/usb-c_connector.png ">
                        <p>USB-C connector</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/5G_cellular.png ">
                        <p>5G cellular</p>
                    </div>
                </div>
            </div>

            <div class="flex-container ">
                <!--iPad-->
                <div class="row " id="ipad">
                    <div class="imgcol ">
                        <img src="../assets/images/ipad_compare.png " alt="iPad compare ">
                    </div>
                    <h3>iPad</h3>
                    <hr>
                    <div class="col ">
                        <h2>10.2”</h2>
                        <p>Retina display</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/A13_chip_icon.png " alt="A13 Chip ">
                        <p>A13 Bionic Chip</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/ipad_camera_module.png ">
                        <p>8MP Wide back camera</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/lightning_connector.png ">
                        <p>Lightning connector</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/4G_cellular.png ">
                        <p>4G LTE cellular</p>
                    </div>
                </div>

                <!--iPad mini-->
                <div class="row " id="ipadmini">
                    <div class="imgcol ">
                        <img src="../assets/images/ipadmini_compare.png " alt="iPad mini compare ">
                    </div>
                    <h3>iPad mini</h3>
                    <hr>
                    <div class="col ">
                        <h2>8.3”</h2>
                        <p>Liquid Retina display</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/A15_chip_icon.png " alt="A15 Chip ">
                        <p>A15 Bionic Chip</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/ipadmini_camera_module.png ">
                        <p>12MP Wide back camera</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/usb-c_connector.png ">
                        <p>USB-C connector</p>
                    </div>
                    <div class="col ">
                        <img src="../assets/images/5G_cellular.png ">
                        <p>5G cellular</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
