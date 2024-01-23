<%@ Page Title="iPhones" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="iphone.aspx.cs" Inherits="Assignment.product.iphone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/iphone.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/iphone.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1 style="text-align: center;color: white;padding-top: 20px;font-size: 35px;">Iphone 14 Series</h1>
    <p style="text-align: center;color: white;font-size: 20px;padding-bottom: 10px;">Your New Superpower.</p>
    <hr class="hr1" style="width: 60%;margin: auto;">

    <div class="iphones">
        <div class="iphone13pro">
            <div class="info">
                <h2>Iphone 14 Pro</h2>
                <p>128 GB | 256 GB | 512 GB | 1 TB</p>
                <p style="padding-top: 10px;padding-bottom: 20px;">From RM 4,899</p>
                <a id="buynow" href="../cart/cart.aspx">Buy Now</a>
                <a href="#iphone13pro">Learn More ></a>
            </div>

            <div class="image">
                <img src="../assets/images/iphone_13_pro.png" alt="Iphone 14 Pro">
            </div>
        </div>

        <div class="iphone13">
            <div class="info">
                <h2>Iphone 14</h2>
                <p>128 GB | 256 GB | 512 GB </p>
                <p style="padding-top: 10px;padding-bottom: 20px;">From RM 3,399</p>
                <a id="buynow" href="../cart/cart.aspx">Buy Now</a>
                <a href="#iphone13">Learn More ></a>
            </div>

            <div class="image">
                <img src="../assets/images/iphone_13.png" alt="Iphone 14">
            </div>
        </div>
    </div>

    <hr style="width: 80%;margin: 50px auto;opacity: 30%;">

    <div id="iphone13pro">
        <section id="content1">
            <div class="content1">
                <p>Iphone 14 & Iphone 14 Pro </p>
                <h1 class="oh oh-animation" style="font-weight: 600;font-size: 60px;padding-top: 10px;padding-right: 20px;">Oh.</h1>
                <h1 class="so so-animation" style="font-weight: 600;font-size: 60px;padding-top: 10px;padding-right: 20px;">So.</h1>
                <h1 class="pro pro-animation" style="font-weight: 600;font-size: 60px;padding-top: 10px;">Pro.</h1>
            </div>
            <div class="image1">
                <img src="../assets/images/iphone13pro.png" alt="Iphone 14 Pro">
            </div>
        </section>

        <hr style="width: 80%;margin: auto;opacity: 50%;">

        <section id="content2">
            <div class="content2">
                <h2>Choose The Right Size</h2>
                <div class="image2">
                    <img src="../assets/images/iphone13pro_promax.jpg" alt="Iphone 14 Pro & Pro Max">
                </div>
            </div>
        </section>

        <section id="content3">
            <div class="content3">
                <h2 class="title-animation">Iphone 14 Pro  vs Iphone 14 </h2>

                <hr style="width: 40%;margin: 0px auto 50px auto;opacity: 50%;">

                <table>
                    <tr>
                        <th>Model</th>
                        <th style="font-size: 23px;">Iphone 14 Pro </th>
                        <th style="font-size: 23px;">Iphone 14</th>
                    </tr>

                    <tr>
                        <th>Size and Weight</th>
                        <td>160.8mm x 78.1mm x 7.65mm , 238g</td>
                        <td>146.7mm x 71.5mm x 7.65mm, 203g</td>
                    </tr>

                    <tr style="height: 120px;">
                        <th>Display</th>
                        <td>6.7-inch (diagonal) all-screen OLED display <br> 2778x1284-pixel resolution at 458 ppi</td>
                        <td>6.1-inch (diagonal) all-screen OLED display <br> 2532x1170-pixel resolution at 460 ppi</td>
                    </tr>

                    <tr>
                        <th>Water Resistance</th>
                        <td colspan="2 ">Rated IP68 (maximum depth of 6 metres for up to 30 minutes)</td>
                    </tr>

                    <tr style="height: 140px;">
                        <th>Chip</th>
                        <td colspan="2 ">A15 Bionic chip <br> New 6-core CPU with two performance and four efficiency cores <br> New 5-core GPU <br> New 16-core Neural Engine</td>
                    </tr>

                    <tr style="height: 180px;">
                        <th>Camera</th>
                        <td colspan="2 ">
                            Pro 12MP camera system: Telephoto, Wide and Ultra Wide cameras <br> Telephoto: ƒ/2.8 aperture <br> Wide: ƒ/1.5 aperture <br> Ultra Wide: ƒ/1.8 aperture and 120° field of view</td>
                    </tr>

                    <tr>
                        <th>SIM Card</th>
                        <td colspan="2 ">Dual SIM (nano-SIM and eSIM) <br> Dual eSIM support11</td>
                    </tr>
                </table>
            </div>
        </section>

        <div class="image3">
            <img src="../assets/images/iphone13pro_promax2.jpg" alt="Iphone 14 Pro  & Iphone 14"></img>
        </div>
    </div>

    <div id="iphone13">
        <section class="content4">
            <h2 class="title-animation">Iphone 14</h2>
            <h1 class="so-animation">Your new superpower.</h1>
            <div class="image4">
                <img src="../assets/images/iphone_13_family.png" alt="Iphone 13 Colors">
            </div>
            <p>Available in Red, Starlight, Midnight, Blue and Pink</p>
        </section>

        <hr style="width: 60%;margin: auto;">

        <section class="content5">
            <h2>Iphone 14 Specifications</h2>
            <div class="content5flex">
                <div class="image5">
                    <img src="../assets/images/iphone13_pink.jpg" alt="Iphone 14 Pink">
                </div>

                <ul>
                    <li>6.1" Super Retina XDR display</li>
                    <li>Durable flat-edge design</li>
                    <li>Rated IP68 Water Resistance</li>
                    <li>A15 Bionic Chip</li>
                    <li>Ceramic Shield</li>
                </ul>
            </div>
        </section>

        <hr style="width: 60%;margin: auto;">

        <section class="content6">
            <div class="image6">
                <img src="../assets/images/hold_iphone.jpg">
            </div>
            <h2>Grab your's Iphone today</h2>
            <a href="../cart/cart.aspx">Switch to Iphone</a>
        </section>
    </div>
</asp:Content>
