<%@ Page Title="User Profile" Language="C#" MasterPageFile="~/view/user/UserPortal.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Assignment.view.user.userProfile" %>
<asp:Content ID="UserProfileHead" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="UserProfileBody" ContentPlaceHolderID="cphUser" runat="server">
    <div class="d-flex flex-column align-items-center justify-content-center vh-100 w-75">
        <div class="p-2 w-75">
            <h4>User Information</h4>
            <hr class="w-50" />
            
            <div class="container">
                <div class="row">
                    <div class="col-6 mb-3">
                        <h6>Full Name</h6>
                        <asp:Label ID="lblfull_name" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                    <div class="col-6 mb-3">
                        <h6>Email Address</h6>
                        <asp:Label ID="lblemail" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 mb-3">
                        <h6>Gender</h6>
                        <asp:Label ID="lblgender" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                    <div class="col-6 mb-3">
                        <h6>Date of Birth</h6>
                        <asp:Label ID="lbldob" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <div class="p-2 w-75 mt-5">
            <h4>Contact Details</h4>
            <hr class="w-25"/>
            <div class="container">
                <div class="row">
                    <div class="col-6 mb-3">
                        <h6>Contact Number</h6>
                        <asp:Label ID="lblcontact_no" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                    <div class="col-6 mb-3">
                        <h6>Address</h6>
                        <asp:Label ID="lbladdress" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 mb-3">
                        <h6>Postal Code</h6>
                        <asp:Label ID="lblpostal_code" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                    <div class="col-6 mb-3">
                        <h6>State</h6>
                        <asp:Label ID="lblstate" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>