<%@ Page Title="Join Us" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="career.aspx.cs" Inherits="Assignment.career" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/career.css" rel="stylesheet" type="text/css" />
    <script src="assets/javascript/function.js" defer></script>
    <script src="assets/javascript/careerScroll.js" defer></script>
    <!--Load javascript after the webpage finish loaded-->
    <!--Chatbot js-->
    <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
    <df-messenger intent="WELCOME" chat-title="Live Chat" agent-id="d3c85f8a-0a7a-4c5e-bf08-0bd15ed128d8" chat-icon="assets/images/chat.png" wait-open="true" 
 language-code="en"></df-messenger>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="career-body-container">
        <section class="intro_videoContainer">
            <video autoplay loop muted id="video1">
            <source src="assets\images\Apple_Loop_1.mp4" type="video/mp4">
            Your browser does not support HTML5 video.
        </video>
        </section>

        <section class="video1_text">
            <h1>Join us. Be you.</h1>
            <span><a href="assets\images\Apple_Loop_1.mp4">&nbsp&nbsp&nbsp&nbsp&nbspWatch the film</a></span>
        </section>

        <section class="after_video1_textContainer ">
            <img src="assets\images\creative.jpg">
            <p>
                This is where individual imaginations gather together, committing to the values that lead to great work. Here, you'll do more than join something - you'll add something.
            </p>
        </section>

        <section class="after_video1_text2Container">
            <div class="content-container">
                <div class="inner-container-workAtApple">
                    <h2 class="work show">Work at Apple</h2>
                    <p class="joinTeam showleft">Join a team and inspire the work.</p>
                    <P class="discover show">Discover how you can make an impact: see our areas of work, worldwide locations and opportunities for students.</br>
                        </br>
                        <a href="https://www.apple.com/careers/my/work-at-apple.html">Learn More</a>
                    </p>

                </div>
            </div>
        </section>

        <section class="ways-textContainer">
            <div class="ways-text">
                <p>
                    Just a few of the ways you can </br><span id="difference">make a difference</span> at Apple
                </p>
            </div>
        </section>


        <section class="ways-infoContainer">
            <div class="ways-infoContainer-left show">
                <div class="box1">
                    <img src="assets\images\SoftwareAndServices.png" alt="SoftwareAndServices" class="img1">
                </div>

                <div class="box2">
                    <a href="https://www.apple.com/careers/my/teams/software-and-services.html">Software and Services</a>
                </div>
            </div>

            <div class="ways-infoContainer-right showleft">
                <div class="box1">
                    <img src="assets\images\Hardware.png" alt="Hardware" class="img1">
                </div>

                <div class="box2">
                    <a href="https://www.apple.com/careers/my/teams/hardware.html">Hardware</a>
                </div>
            </div>
        </section>

        <section class="ways-infoContainer">
            <div class="ways-infoContainer-left showleft">
                <div class="box1">
                    <img src="assets\images\MachineAndAI.png" alt="MachineAndAI" class="img1">
                </div>

                <div class="box2">
                    <a href="https://www.apple.com/careers/my/teams/machine-learning-and-ai.html">Machine Learning and AI</a>
                </div>
            </div>

            <div class="ways-infoContainer-right show">
                <div class="box1">
                    <img src="assets\images\SupportAndService.png" alt="SupportAndService" class="img1">
                </div>

                <div class="box2" id="lastbox2">
                    <a href="https://www.apple.com/careers/my/teams/support-and-service.html">Support and Service</a>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
