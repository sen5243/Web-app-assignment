<%@ Page Title="AirPods" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="airpod.aspx.cs" Inherits="Assignment.product.airpod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/airpod.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/function.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="section1">
        <div class="section1-1">
            <video src="../assets/images/large_2x.mp4" autoplay muted loop preload="auto" style="pointer-events: none;"></video>
        </div>
        <div class="section1-2">
            <h1 class="product-name">AirPods</h1>
            <p class="slogan">3rd generation</p>
            <p class="price">RM 829</p>
            <p><a class="buy" href="../cart/cart.html">Buy</a></p>
        </div>
    </div>

    <div class="section2">
        <div class="section2-1">
            <img src="../assets/images/airpods_pro_left.png" alt="airpods_pro_left">
            <img src="../assets/images/airpods_pro_right.png" alt="airpods_pro_right">
        </div>

        <div class="section2-2">
            <h1 class="product-name-2">AirPods Pro</h1>
            <p class="price-2">RM 1,099</p>
            <p><a class="buy-2" href="../cart/cart.html">Buy</a></p>
        </div>
    </div>

    <div class="section3">
        <div class="section3-1">
            <img src="../assets/images/airpods_2ndgen_left.png" alt="airpods_gen2_pro_left">
            <img src="../assets/images/airpods_2ndgen_right.png" alt="airpods2_gen2_pro_right">
        </div>

        <div class="section3-2">
            <h1 class="product-name-3">AirPods</h1>
            <p class="slogan-2">2nd generation</p>
            <p class="price-3">RM 589</p>
            <p><a class="buy" href="../cart/cart.html">Buy</a></p>
        </div>
    </div>


    <!-- Comparison here -->
    <div class="section3a">
        <div class="section4 ">
            <h2 class="section4-heading ">Which Airpods are right for you?</h2>
            <div class="flex-table ">
                <div class="flex-container ">

                    <!--Airpods 2nd Gen-->
                    <div class="row">
                        <div class="imgcol ">
                            <img src="../assets/images/airpods-2nd.jpg " alt="airpods-2nd">
                        </div>
                        <h3>AirPods</h3>
                        <div style="padding-bottom: 20px;">
                            <p>2nd generation</p>
                        </div>
                        <div style="padding-bottom: 20px;">
                            <p>RM 589</p>
                            <Br>
                            <p><a class="buy-2" href="../cart/cart.html">Buy</a></p>
                        </div>

                        <hr>

                        <div class="col">
                            <p style="font-size: 4vw;">-</p>
                        </div>
                        <div class="col">
                            <p style="font-size: 4vw;">-</p>
                        </div>
                        <div class="col">
                            <p style="font-size: 4vw;">-</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod-4.PNG">
                            <p>Lightning charging</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod-5.PNG">
                            <p>Up to 5 hours of<br>listening time with a<br>single charge</p>
                        </div>
                    </div>
    
                    <!--Airpods 3nd Gen-->
                    <div class="row">
                        <div class="imgcol ">
                            <img src="../assets/images/airpods-3rd.jpg" alt="airpods-3rd ">
                        </div>
                        <h3>AirPods</h3>
                        <div style="padding-bottom: 20px;">
                            <p>3rd generation</p>
                        </div>
                        <div style="padding-bottom: 20px;">
                            <p>RM 829</p>
                            <Br>
                            <p><a class="buy-2" href="../cart/cart.html">Buy</a></p>
                        </div>
                        <hr>

                        <div class="col ">
                            <img src="../assets/images/airpod-1.PNG" alt="M1 Chip ">
                            <p>Spatial audio with<br>dynamic head tracking</p>
                        </div>
                        <div class="col">
                            <p style="font-size: 4vw;">-</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod3.PNG">
                            <p>Sweat and<br>water resistant</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod-4.PNG">
                            <p>MagSafe, wireless and<br>Lightning charging</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod-6.PNG">
                            <p>Up to 6 hours of<br>listening time with a<br>single charge</p>
                        </div>
                    </div>

                    <!--Airpods Pro-->
                    <div class="row">
                        <div class="imgcol ">
                            <img src="../assets/images/airpods-pro.jpg" alt="airpods-pro">
                        </div>
                        <h3>AirPods Pro</h3>
                        <div style="padding-bottom: 20px;">
                            <br>
                        </div>
                        <div style="padding-bottom: 20px;">
                            <p>RM 1099</p>
                            <Br>
                            <p><a class="buy-2" href="../cart/cart.html">Buy</a></p>
                        </div>
                        <hr>

                        <div class="col ">
                            <img src="../assets/images/airpod-1.PNG" alt="M1 Chip ">
                            <p>Spatial audio with<br>dynamic head tracking</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod-2.PNG">
                            <p>Active Noise<br>Cancellation and<br>Transparency mode</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod3.PNG">
                            <p>Sweat and<br>water resistant</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod-4.PNG">
                            <p>MagSafe, wireless and<br>Lightning charging</p>
                        </div>
                        <div class="col ">
                            <img src="../assets/images/airpod-7.PNG">
                            <p>Up to 4.5 hours of<br>listening time with a<br>single charge</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
