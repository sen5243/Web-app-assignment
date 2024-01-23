<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="support.aspx.cs" Inherits="Assignment.support.support" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/support.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="section1">
        <h1>Support</h1>
        <h2>We'll find you the best solution.</h2>
        <img src="../assets/images/support.jpg" alt="Hero Image" class="image1">
    </div>

    <div class="section2">
        <div class="row-container">
            <a href="contact.html">
                <img src="../assets/images/spcontactus.jpg" id="contactus">
                <p>Contact Us</p>
            </a>
            <a href="faq.html">
                <img src="../assets/images/spfaq.jpg" id="faq">
                <p>FAQ</p>
            </a>
            <a href="feedback.html">
                <img src="../assets/images/spfeedback.jpg" id="feedback">
                <p>Feedback</p>
            </a>
            <a href="phone.html">
                <img src="../assets/images/spphonenumber.jpg" id="phonenumber">
                <p>Phone Number</p>
            </a>
        </div>
    </div>
</asp:Content>
