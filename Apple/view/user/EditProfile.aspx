<%@ Page Title="Edit Profile" Language="C#" MasterPageFile="~/view/user/UserPortal.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="Assignment.view.user.EditProfile" %>
<asp:Content ID="editProfileHead" ContentPlaceHolderID="cphHead" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
               -webkit-appearance: none;
                margin: 0;
        }
 
        input[type=number] {
            -moz-appearance: textfield;
        }

        .fa-caret-down{
            position:relative;
            left:-20px;
            pointer-events:none;
        }

        .validator{
            font-size:12px;
            position:absolute;
        }
    </style>
</asp:Content>

<asp:Content ID="editProfileBody" ContentPlaceHolderID="cphUser" runat="server">
    <div class="d-flex flex-column justify-content-center vh-100 w-75">

        <div class="w-25 my-4 mx-4">
            <a href="UserProfile.aspx">< Back to Profile</a>
        </div>

        <div class="d-flex flex-column justify-content-center align-items-center h-75">
                <div class="p-2">
                    <h4>Edit User Information</h4>
                    <hr class="w-50"/>    
            
                    <div class="container">
                        <div class="row">
                            <div class="col-6 mb-3">
                                <h6>Full Name</h6>
                                <asp:TextBox id="inputFullName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-6 mb-3">
                                <h6>Email Address</h6>
                                <asp:TextBox id="showEmail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 mb-3">
                                <h6>Gender</h6>
                                <div class="row">
                                    <div class="col-md-4">
                                        <asp:RadioButton ID="GenderMale" runat="server" Text="Male" GroupName="gender" CssClass="form-check-input"/>
                                    </div>
                                    <div class="col-md-5">
                                        <asp:RadioButton ID="GenderFemale" runat="server" Text="Female" GroupName="gender" CssClass="form-check-input"/> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-6 mb-3">
                                <h6>Date of Birth</h6>
                                <asp:TextBox id="inputDoB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="p-2">
                    <h4>Edit Contact Details</h4>
                    <hr class="w-25"/>
                    <div class="container">
                        <div class="row">
                            <div class="col-6 mb-3">
                                <h6>Contact Number</h6>
                                <asp:TextBox id="inputContactNumber" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="col-6 mb-3">
                                <h6>Address</h6>
                                <asp:TextBox id="inputAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" Columns="30" style="resize:none;"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 mb-3">
                                <h6>Postal Code</h6>
                                <asp:TextBox id="inputPostalCode" runat="server" CssClass="form-control" TextMode="number" onKeyPress="if(this.value.length==5) return false;" min="1"></asp:TextBox>
                            </div>
                            <div class="col-6 mb-3">
                                <h6>State</h6>
                                <div class="d-flex align-items-center">
                                    <asp:DropDownList id="ddlState" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="State_Name" DataValueField="State_ID"></asp:DropDownList>
                                    <i class="fa-solid fa-caret-down"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="offset-4 col-2">
                            <asp:Button ID="btmUpdateProfile" runat="server" Text="Update Profile" CssClass="btn btn-primary mt-4" OnClick="btmUpdateProfile_Click"/>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>