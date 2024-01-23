<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Assignment.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="assets/css/about.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="aboutUs-body-container">
        <div class="ethics-container">
            <div class="aboutUs-ethics">
                <h1>Ethics and Compliance</h1><br/>
                <p>Apple conducts business ethically, honestly, and in full compliance with the law. We believe that how we conduct ourselves is as critical to Apple’s success as making the best products in the world. Our Business Conduct and Compliance
                    policies are foundational to how we do business and how we put our values into practice every day.</p><br/>
                <p><q>We do the right thing, even when it’s not easy.</q></p><br/>
                <span>Tim Cook</span>
            </div>
        </div>


        <div class="aboutUs-infoContainer">
            <div class="box1">
                <h1>Our Business Conduct Policy</h1><br/>
                <p>Honesty, Respect, Confidentiality and Compliance</p><br/>
            </div>

            <div class="box2">
                <img src="assets/images/conductpolicypic.jpg" alt="Store" class="img1">
            </div>

            <div class="wrapper">
                <div class="collapsible">
                    <input type="checkbox" id="collapsible-head1">
                    <label for="collapsible-head1">
                        <p>
                            Read More about Our Business Conduct Policy
                            <img src="assets\images\plus-sign.png" class="collapsible-icon">
                        </p>
                    </label>
                    <div class="collapsible-text">
                        <p>Our <a href="https://www.apple.com/compliance/pdfs/Business-Conduct-Policy.pdf">Business Conduct Policy (PDF)</a> sets out our ethical requirements for our employees. Each of our employees must certify that they have read and understand
                            the policy when they join Apple, and again each year. Violations of the policy are taken seriously and may result in disciplinary action, up to and including termination of employment. </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="aboutUs-infoContainer">
            <div class="box1">
                <h1>Compliance at Apple</h1>
            </div>

            <div class="box2">
                <img src="assets\images\compliancepic.jpg" alt="Apple and Document Picture" class="img1">
            </div>

            <div class="wrapper">
                <div class="collapsible">
                    <input type="checkbox" id="collapsible-head2">
                    <label for="collapsible-head2">
                        <p>
                            Read More about Compliance at Apple
                            <img src="assets\images\plus-sign.png" class="collapsible-icon">
                        </p>
                    </label>
                    <div class="collapsible-text">
                        <p>A number of compliance functions are deeply integrated into our business organization. Apple’s Business Conduct and Global Compliance team focuses on Business Conduct, Political Compliance, Export and Sanctions Compliance, Health
                            Compliance, Antitrust Compliance, and Anti-Corruption Compliance.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="aboutUs-infoContainer">
            <div class="box1">
                <h1>Bringing Policy to Life</h1>
            </div>

            <div class="box2">
                <img src="assets\images\lifepic.png" alt="Laptop" class="img1">
            </div>

            <div class="wrapper">
                <div class="collapsible">
                    <input type="checkbox" id="collapsible-head3">
                    <label for="collapsible-head3">
                        <p>
                            Read More about Bringing Policy to Life
                            <img src="assets\images\plus-sign.png" class="collapsible-icon">
                        </p>
                    </label>
                    <div class="collapsible-text">
                        <p>Every Apple employee is required to complete mandatory annual Business Conduct training. We offer a range of additional resources for employees to address questions and concerns, including the Business Conduct Helpline and the
                            Business Conduct website.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="aboutUs-infoContainer-last">
            <div class="box1">
                <h1>Being Accountable</h1>
            </div>

            <div class="box2">
                <img src="assets\images\accountablepic.png" alt="Group of people" class="img1">
            </div>

            <div class="wrapper">
                <div class="collapsible">
                    <input type="checkbox" id="collapsible-head4">
                    <label for="collapsible-head4">
                        <p>
                            Read More about Being Accountable
                            <img src="assets\images\plus-sign.png" class="collapsible-icon">
                        </p>
                    </label>
                    <div class="collapsible-text">
                        <p>We conduct internal and third-party independent assessments of our programs to ensure they are effective. We make changes to our policies and our training to reflect emerging trends. Apple’s Chief Compliance Officer provides regular
                            updates to the Audit and Finance Committee of the Board of Directors.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
