<%@ Page Title="Mac" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="mac.aspx.cs" Inherits="Assignment.product.mac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/mac.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/mac.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--First Part-->
    <h1 style="text-align: center;color: white;padding-top: 20px;font-size: 35px;">Mac Series</h1>
    <p style="text-align: center;color: white;font-size: 20px;padding-bottom: 10px;">Incredible power. Incredible simple.</p>
    <hr style="width: 60%;margin: auto;">

    <div class="mac">
        <div class="macbook">
            <div class="info">
                <h2>MacBook</h2>
                <p>Apple M1 chip | 2TB | 8-core </p>
                <p style="padding-top: 10px;padding-bottom: 20px;">From RM 4,399</p>
                <a id="buynow" href="../cart/cart.aspx">Buy Now</a>
                <a href="#notebook">Learn More ></a>
            </div>

            <div class="image">
                <img src="../assets/images/macbook_air.png" alt="macbook air" usemap="#macbook">
            </div>
            <map name="macbook">
                <area shape="rect" coords="0,0,400,255" alt="macbook air" href="#notebook">
              </map>
        </div>

        <div class="imac">
            <div class="info">
                <h2>iMac 24"</h2>
                <p>Apple M1 chip | 2TB | 8-core </p>
                <p style="padding-top: 10px;padding-bottom: 20px;">From RM 5,599</p>
                <a id="buynow" href="../cart/cart.aspx">Buy Now</a>
                <a href="#desktop">Learn More ></a>
            </div>

            <div class="image">
                <img src="../assets/images/imac.png" alt="imac" usemap="#imac">
            </div>
            <map name="imac">
                <area shape="rect" coords="80,0,315,245" alt="imac" href="#desktop">
              </map>
        </div>
    </div>
    <div class="macbookpro" id="macbookpro">
        <div class="macbooks">
            <p style="font-size: 30px;padding-top: 60px;font-weight: 300;">MacBook Pro 14" and 16 "</p>
            <h1 style="font-size: 70px;font-weight: 600;padding-bottom: 77px;">Supercharged for pros.</h1>
            <img src=" ../assets/images/macbooks.png " alt="MacBook Pro ">
        </div>
    </div>

    <div class="notebook" id="notebook">
        <h2 style="text-align: center;color: white;padding-top: 20px;font-size: 35px;">Mac Notebook</h2>
        <hr style="width: 80%;margin: auto;">

        <div class="slideshow-container">

            <!-- Full-width images with number and caption text -->
            <div class="notebooks fade">
                <img src="../assets/images/macbook_air.png" style="width:50%">
                <div class="text">Macbook Air 13.3"</div>
                <p class="detail">
                    Apple M1 Chip<br> 8-core GPU & CPU<br> Up to 18 hours battery life<br> Up to 16GB unified memory<br> 2TB maximum configurable storage<br> From RM4,399
                </p>
            </div>

            <div class="notebooks fade">
                <img src="../assets/images/macbook_pro.png" style="width:50%">
                <div class="text">Macbook Pro 13.3"</div>
                <p class="detail">
                    Apple M1 Chip<br> 8-core GPU & CPU<br> Up to 20 hours battery life<br> Up to 16GB unified memory<br> 2TB maximum configurable storage<br> From RM 5,599
                </p>
            </div>

            <div class="notebooks fade">
                <img src="../assets/images/macbook_pro.png" style="width:50%">
                <div class="text">Macbook Pro 14.2" or 16.2"</div>
                <p class="detail">
                    Apple M1 Pro Chip or Apple M1 Max Chip<br> up to 32 core-GPU & 10-core CPU<br> Up to 21 hours battery life<br> Up to 64GB unified memory<br> 8TB maximum configurable storage<br> From RM 8,799
                </p>
            </div>

            <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
            <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
        </div>
        <br>

        <div class="imacs" id="imacs">
            <div class="imacs">
                <p style="font-size: 30px;padding-top: 60px;font-weight: 300;">iMac 24"</p>
                <h1 style="font-size: 70px;font-weight: 600;padding-bottom: 77px;">Bright and Beautiful.</h1>
                <img src=" ../assets/images/imacs.png " alt="iMac ">
            </div>
        </div>

        <div class="desktop" id="desktop">
            <h2 style="text-align: center;color: white;padding-top: 20px;font-size: 35px;">Mac Desktop</h2>
            <hr style="width: 80%;margin: auto;">

            <div class="slideshow-container">
                <div class="desktops fade">
                    <img src="../assets/images/imac.png" style="width:50%">
                    <div class="text">iMac 24"</div>
                    <p class="detail">
                        Apple M1 Chip<br> 8-core GPU & CPU<br> Up to 16GB unified memory<br> 2TB maximum configurable storage<br> From RM 5,599
                    </p>
                </div>

                <div class="desktops fade">
                    <img src="../assets/images/mac_mini.png" style="width:50%">
                    <div class="text">Mac Mini</div>
                    <p class="detail">
                        Apple M1 Chip<br> 8-core GPU & CPU<br> Up to 16GB unified memory<br> 2TB maximum configurable storage<br> From RM 2,999
                    </p>
                </div>

                <div class="desktops fade">
                    <img src="../assets/images/mac_studio.png" style="width:40%">
                    <div class="text">Mac Studio</div>
                    <p class="detail">
                        Apple M1 Ultra Chip or Apple M1 Max Chip<br> up to 64 core-GPU & 20-core CPU<br> Up to 128GB unified memory<br> 8TB maximum configurable storage<br> From RM 8,799
                    </p>
                </div>

                <div class="desktops fade">
                    <img src="../assets/images/mac_pro.png" style="width:40%">
                    <div class="text">Mac Pro</div>
                    <p class="detail">
                        Intel Xeon W processor<br> up to AMD Radeon Pro W6800X Duo GPU & 28-core CPU<br> Up to 1.5TB unified memory<br> 8TB maximum configurable storage<br> From RM 25,999
                    </p>
                </div>

                <!-- Next and previous buttons -->
                <a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1, 1)">&#10095;</a>
            </div>
            <br>
        </div>

        <div class="macbanner">
                <img src="../assets/images/macbanner.jpg" alt="banner">
                <a id="buynow" href="../cart/cart.aspx">Get your Mac now</a>

        </div>
</asp:Content>
