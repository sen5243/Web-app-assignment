<%@ Page Title="Watches" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="watches.aspx.cs" Inherits="Assignment.product.watches" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/watches.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/watches.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Main Code -->

    <!-- Section 1 -->
    <div class="section1">
        <div class="section1-1">
            <img src="../assets/images/watches-section1.jpg" alt="watches-section1">
            <h1 class="slogan">Full Screen Ahead.</h1>
            <p class="price">From RM 1,749</p>
            <p><a class="buy" href="../cart/cart.aspx">Buy</a></p>
            <p class="watch-film">
                <a href="../assets/images/watches-film.mp4">Watch the film <img src="../assets/images/blue-bold-video.png" alt="blue-bold-video"></a>
            </p>
        </div>
        <div class="section1-2">
            <img src="../assets/images/watches1.jpg" alt="watches1">
        </div>
    </div>

    <!-- Section 2 -->
    <div class="section2">
        <div class="section2-1">
            <img id="theImage" src="../assets/images/watches-section2.PNG" alt="watches-section2">
        </div>

        <div class="section2-2">
            <div class="section2-2-1">
                <p class="section2-p1">Our largest display yet.</p>
                <p class="section2-p2">Over</p>
                <p class="section2-p2">50 per cent</p>
                <p class="section2-p2">more screen</p>
                <p class="section2-p2">area than</p>
                <p class="section2-p2">Series 3.</p>
            </div>
            <div class="section2-2-2" id="btn-div">
                <button class="btn active" id="Button1">Series 7</button>
                <button class="btn" id="Button2">Series 3</button>
            </div>
        </div>
    </div>

    <!-- SECTION 3 -->

    <div class="section2A">
        <div class="section3">
            <div class="section3-1">
                <img src="../assets/images/watches-section3-1.jpg" alt="watches-section3-1">
                <p class="section3-p1">Heavy on features.</p>
                <p class="section3-p1">Light on the pocket.</p>
                <p class="section3-p2">From RM 1,199</p>
                <p><a class="buy" href="../cart/cart.aspx">Buy</a></p>
            </div>
            <div class="section3-2">
                <img class="image1 image1-animation" src="../assets/images/watches-section3-2.jpg" alt="watches-section3-2">
            </div>
    
        </div>
    </div>

    <div class="section3a-1">
            <!-- Comparison here -->
    <div class="section3a">
        <div class="section4 ">
            <h2 class="section4-heading ">Which Apple Watch is right for you?</h2>
            <div class="flex-table ">
                <div class="flex-container ">

                    <div class="row">
                        <div class="imgcol ">
                            <img src="../assets/images/watch7.jpg" alt="watch7">
                        </div>
                        <h3>Apple Watch Series 7</h3>
                        <div style="padding-bottom: 20px;">
                            <p>RM 1,749</p>
                            <Br>
                            <p><a class="buy-2" href="../cart/cart.aspx">Buy</a></p>
                        </div>

                        <hr>

                        <div class="col">
                            <img src="../assets/images/wa1.jpg" alt="wa1">
                            <p>Always-On Retina display<br>Nearly 20 per cent larger<br>than Apple Watch SE</p>
                        </div>
                        <div class="col">
                            <img src="../assets/images/wa3.jpg" alt="wa3">
                            <p>Blood Oxygen app</p>
                        </div>
                        <div class="col">
                            <img src="../assets/images/wa4.jpg" alt="wa4">
                            <p>ECG app</p>
                        </div>
                        <div class="col">
                            <img src="../assets/images/wa5.jpg" alt="wa5">
                            <p>High and low heart<br>rate notifications</p>
                        </div>
                    </div>
    
                    <div class="row">
                        <div class="imgcol ">
                            <img src="../assets/images/watchse.jpg" alt="watchse">
                        </div>
                        <h3>Apple Watch SE</h3>
                        <div style="padding-bottom: 20px;">
                            <p>RM 1,199</p>
                            <Br>
                            <p><a class="buy-2" href="../cart/cart.aspx">Buy</a></p>
                        </div>
                        <hr>

                        <div class="col ">
                            <img src="../assets/images/wa2.jpg" alt="wa2">
                            <p>Over 30 per cent larger<br>than Series 3</p>
                        </div>
                        <div class="col">
                            <p style="font-size: 4vw;">-</p>
                        </div>
                        <div class="col">
                            <p style="font-size: 4vw;">-</p>
                        </div>
                        <div class="col">
                            <img src="../assets/images/wa5.jpg" alt="wa5">
                            <p>High and low heart<br>rate notifications</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="imgcol ">
                            <img src="../assets/images/watch3.jpg" alt="watch3">
                        </div>
                        <h3>Apple Watch Series 3</h3>
                        <div style="padding-bottom: 20px;">
                            <p>RM 849</p>
                            <Br>
                            <p><a class="buy-2" href="../cart/cart.aspx">Buy</a></p>
                        </div>
                        <hr>

                        <div class="col ">
                            <img src="../assets/images/wa2.jpg" alt="wa2">
                            <p>Retina display</p>
                        </div>
                        <div class="col">
                            <p style="font-size: 4vw;">-</p>
                        </div>
                        <div class="col">
                            <p style="font-size: 4vw;">-</p>
                        </div>
                        <div class="col">
                            <img src="../assets/images/wa5.jpg" alt="wa5">
                            <p>High and low heart<br>rate notifications</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</asp:Content>
