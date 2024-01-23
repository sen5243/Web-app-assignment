<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Assignment.support.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../assets/css/contact.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- navigation bar here -->

    <div class="contact-body">
        <section class="contact-headcontainer">
            <div class="heading">
                <h1>Contacting Apple</h1>
            </div>
        </section>

        <section class="details-container">
            <div class="details-content">
                <div class="details-heading">
                    <h2>Sales and Product Enquiries</h2>
                </div>

                <div class="row">
                    <div class="col" id="col1">
                        <div class="apple-store">
                            <h3>Apple Online Store</h3>
                            <p class="col-first">
                                <a href="https://www.apple.com/my/">Apple.com/my</a> is a convenient place to purchase Apple products and accessories from Apple and other manufacturers. You can buy online or call 1800-80-6419.
                            </p>
                            <p>
                                You can get information about an order you placed on the Apple Online Store through the <a href="https://secure2.store.apple.com/my/shop/signIn/orders?ssi=1AAABgBhL3GIgyB6i7LNNoYVToguCsHQehlOG9QdJrylG9BwEe3osKrkAAAA0aHR0cHM6Ly9zZWN1cmUyLnN0b3JlLmFwcGxlLmNvbS9teS9zaG9wL29yZGVyL2xpc3R8fAACAU8At8mGWczhYyLAzMlNN6ObNCcJvybDJuY8X4Nfiwoj">Order Status</a>                                page. If you prefer, you can also get order status or make changes by phone at 1800-80-6419.
                            </p>
                            <p class="col-last">
                                Visit <a href="https://www.apple.com/my/shop/help">Apple Online Store Help</a> on details about purchasing, shipping, checking order status, returns and more.
                            </p>
                        </div>

                        <div class="training-centres">
                            <h3>Find Authorised Training Centres</h3>
                            <p class="col-first" id="before-line">
                                Use our <a href="https://training.apple.com/">Training Centre Locator</a> to find Apple Authorised Training Centres worldwide.
                            </p>
                        </div>
                    </div>
                    <div class="col" id="col2">
                        <div class="how-to">
                            <h3>How to Buy for Education</h3>
                            <p class="col-first">
                                If you are a student or teacher, visit the <a href="https://www.apple.com/my-edu/shop">Apple Store for Education</a> or call 1800-80-6419.
                            </p>
                            <p class="col-last">
                                If you are buying on behalf of an educational institution, find an <a href="https://www.apple.com/my/education/how-to-buy/resellers/">Apple Authorised Reseller</a>, who can also provide ongoing support and service based
                                on your school’s needs.
                            </p>
                        </div>
                        <div class="resellers">
                            <h3>Find Authorised Resellers</h3>
                            <p class="col-first">
                                Use our <a href="https://locate.apple.com/my/en/">Reseller Locator</a> to find an Apple Authorised Reseller in Malaysia.
                            </p>
                            <p class="col-last">
                                <a href="https://locate.apple.com/">Apple Authorised Resellers</a> offer industry expertise, multi-platform services and Mac-based solutions for a wide variety of organisations.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="details-container">
            <div class="details-content">
                <div class="details-heading">
                    <h2>Product and Services Support</h2>
                </div>

                <div class="row">
                    <div class="col" id="col3">
                        <div class="apple-support">
                            <h3>Contact Apple Support</h3>
                            <p class="col-first">
                                Need service or support? <a href="https://getsupport.apple.com/">Start your request online</a> and we’ll find you a solution.
                            </p>
                        </div>

                        <div class="more-help">
                            <p class="col-first" id="ways-help">More ways to get help:</p>
                            <ul class="help-links">
                                <li>
                                    <a href="https://support.apple.com/en-my/itunes">Contact iTunes Store support</a></li>
                                <li>
                                    <a href="https://support.apple.com/en-my/HT201232">See all worldwide support telephone numbers</a></li>
                                <li>
                                    <a href="https://support.apple.com/en-my/HT203982">Contact a mobile carrier</a></li>
                                <li>
                                    <a href="https://locate.apple.com/my/en/">Find Apple Authorised Service Provider</a></li>
                            </ul>
                            <p id="eligible-support">
                                Mac, iPhone, iPod, iPad, Apple TV and Apple display customers within 90 days of ownership are eligible for complimentary telephone technical support.
                                <a href="https://support.apple.com/en-my">Online technical support</a> for Apple products is available beyond the initial 90 days.
                            </p>
                        </div>
                    </div>

                    <div class="col" id="col4">
                        <div class="online-support">
                            <h3>Browse Online Support</h3>
                            <p class="col-first">
                                Visit the <a href="https://support.apple.com/en-my">Apple Support</a> site for quick answers, manuals and in-depth technical articles. Visit
                                <a href="https://discussions.apple.com/welcome">Apple Support Communities</a> to get help and tips from fellow Apple customers.
                            </p>
                            <p class="col-last">
                                For help with Beats by Dre headphones and speakers, visit <a href="https://www.beatsbydre.com/my">Beats Support</a>.
                            </p>
                        </div>

                        <div class="stolen">
                            <h3>Lost or Stolen Apple Products</h3>
                            <p class="col-first">
                                If you have lost or found an Apple product, <a href="https://support.apple.com/en-my/HT201472">contact your local police station to report it</a>. You can also find a list of serial numbers associated with your Apple ID
                                and get information about using Find My iPhone for iPhone, iPad, iPod touch or Mac.
                            </p>
                        </div>

                        <div class="legal">
                            <h3>Legal</h3>
                            <p class="col-first">
                                For legal questions, please go to <a href="https://www.apple.com/legal/contact/">apple.com/legal/contact</a> and select from the drop‑down menu provided. To report suspected counterfeit or knockoff products, or other forms
                                of suspected infringement of Apple intellectual property, select Counterfeits & Knockoffs from the drop‑down menu.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="corporate-container">
            <div class="corporate-content">
                <div class="corporate-heading">
                    </br>
                    <p id="corp-heading">Corporate Address</p>
                    </br>
                    </br>
                    </br>
                    <p id="corp-address">
                        Apple </br>Apple Malaysia Sdn Bhd</br> Level 11 </br>Menara CIMB, </br>Jalan Stesen Sentral 2,</br> Kuala Lumpur Sentral,</br> 50470 Kuala Lumpur </br>03-2265-7000
                    </p>
                </div>

                <div class="info-container">
                    <h3 id="info-heading">Frequently Requested Info</h3>
                    <div class="frequent-info-grid-flow">
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">Apple ID Support</h3>
                                <p>
                                    Learn more about getting an Apple ID and its benefits.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://support.apple.com/en-my/apple-id">Learn more</a>
                                </p>
                            </div>
                        </div>
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">AppleCare Products</h3>
                                <p>
                                    Find out how to get additional technical support and hardware service options for your Apple products.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://www.apple.com/my/support/products/">Learn more</a>
                                </p>
                            </div>
                        </div>
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">Repair and Service</h3>
                                <p>
                                    See all your repair and service options based on your product and location.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://getsupport.apple.com/">Learn more</a>
                                </p>
                            </div>
                        </div>
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">Apple Support Communities</h3>
                                <p>
                                    Give and get help and tips from thousands of other Apple customers.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://discussions.apple.com/welcome">Learn more</a>
                                </p>
                            </div>
                        </div>
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">Repair Status</h3>
                                <p>
                                    Quickly and easily get the status of one or all of your repairs.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://support.apple.com/en-my/my-support">Learn more</a>
                                </p>
                            </div>
                        </div>
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">Job Opportunities</h3>
                                <p>
                                    Find current openings, university jobs, internships and more.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://www.apple.com/careers/my/">Learn more</a>
                                </p>
                            </div>
                        </div>
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">Media and Analyst Info</h3>
                                <p>
                                    Get press releases, media contacts and more.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://www.apple.com/newsroom/">Learn more</a>
                                </p>
                            </div>
                        </div>
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">Email Subscriptions</h3>
                                <p>
                                    Update your email address or change your subscription status.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://appleid.apple.com/">Learn more</a>
                                </p>
                            </div>
                        </div>
                        <div class="info-inner-container">
                            <div class="content-container">
                                <h3 class="sub-heading">User Groups</h3>
                                <p>
                                    Mix and mingle with other Apple Users in your area.<br>
                                </p>
                                <br>
                                <p>
                                    <a href="https://www.apple.com/my/usergroups/">Learn more</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="feedback-container">
                    <div class="feedback-content">
                        <h3>Feedback</h3>
                        <p>
                            Tell us how we’re doing. Select the appropriate feedback option (we read everything, but can’t always respond):
                        </p>
                        <div class="feedback-grid-flow">
                            <div><a href="https://www.apple.com/feedback/">Product Feedback</a></div>
                            <div><a href="https://www.apple.com/my/contact/feedback/">Website Feedback</a></div>
                            <div><a href="https://idmsa.apple.com/IDMSWebAuth/signin.html?path=%2Fcontact%2F&appIdKey=891bd3417a7776362562d2197f89480a8547b108fd934911bcbea0110d07f757&rv=0">Developer Feedback</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

</asp:Content>
