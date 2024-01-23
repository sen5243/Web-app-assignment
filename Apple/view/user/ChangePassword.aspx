<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/view/user/UserPortal.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Not_Apple.view.user.WebForm2" %>

<asp:Content ID="ChangePasswordHead" ContentPlaceHolderID="cphHead" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <style>
        .fa-eye{
            cursor: pointer;
            position:relative;
            left:-30px;
            color:lightgray;
        }

        .fa-eye-slash{
            cursor: pointer;
            position:relative;
            left:-30px;
            color:lightgray;
        }
        .validator
        {
            font-size: 13px;
            position:absolute;
            margin-left: 25px;
        }

    </style>
    <script>
        function showOldPassword() {
            var oldPassword = document.getElementById("cphUser_inputOldPassword");
            var toggle = document.getElementById("showOldPassword");
            if (oldPassword.type == "password") {
                oldPassword.type = "text";
                toggle.classList.remove("fa-eye");
                toggle.classList.add("fa-eye-slash");
            }
            else {
                oldPassword.type = "password";
                toggle.classList.remove("fa-eye-slash");
                toggle.classList.add("fa-eye");
            }
        }

        function showNewPassword() {
            var newPassword = document.getElementById("cphUser_inputNewPassword");
            var toggle = document.getElementById("showNewPassword");
            if (newPassword.type == "password") {
                newPassword.type = "text";
                toggle.classList.remove("fa-eye");
                toggle.classList.add("fa-eye-slash");
            }
            else {
                newPassword.type = "password";
                toggle.classList.remove("fa-eye-slash");
                toggle.classList.add("fa-eye");
            }
        }

        function showConfirmPassword() {
            var confirmPassword = document.getElementById("cphUser_inputConfirmPassword");
            var toggle = document.getElementById("showConfirmPassword");
            if (confirmPassword.type == "password") {
                confirmPassword.type = "text";
                toggle.classList.remove("fa-eye");
                toggle.classList.add("fa-eye-slash");
            }
            else {
                confirmPassword.type = "password";
                toggle.classList.remove("fa-eye-slash");
                toggle.classList.add("fa-eye");
            }
        }
    </script>
</asp:Content>

<asp:Content ID="ChangePasswordBody" ContentPlaceHolderID="cphUser" runat="server">

    <div class="d-flex flex-column justify-content-center vh-100 w-75">

        <div class="w-25 my-4 mx-4">
            <a href="UserProfile.aspx">< Back to Profile</a>
        </div>

        <div class="d-flex flex-column justify-content-center align-items-center h-75">
            <div class="w-75">
                <h4>Change Password</h4>
                <hr class="w-50 mb-4"/>
                    <div class="mb-4">
                        <h6>Current Password</h6>
                        <div class="d-flex align-items-center">
                            <asp:TextBox id="inputOldPassword" runat="server" CssClass="form-control" TextMode="password" MaxLength="32"></asp:TextBox>
                            <i class="fa-solid fa-eye" id="showOldPassword" onclick="showOldPassword()"></i>
                        </div>

                        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                          ControlToValidate="inputOldPassword"
                          ErrorMessage="This field must be Filled!"
                          ForeColor="Red" CssClass="validator">
                        </asp:RequiredFieldValidator>
                        
                    </div>

                    <div class="my-4 pt-3">
                        <h6>New Password</h6>
                        <div class="d-flex align-items-center">
                            <asp:TextBox id="inputNewPassword" runat="server" CssClass="form-control" TextMode="password" MaxLength="32"></asp:TextBox>
                            <i class="fa-solid fa-eye" id="showNewPassword" onclick="showNewPassword(this)"></i>
                        </div>
                        <div class="d-flex" style="position:relative">
                            <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                                  ControlToValidate="inputNewPassword"
                                  ErrorMessage="This field must be Filled!"
                                  ForeColor="Red" CssClass="validator">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="mb-3">
                        <h6>Confirm Password</h6>
                        <div class="d-flex align-items-center">
                            <asp:TextBox id="inputConfirmPassword" runat="server" CssClass="form-control" TextMode="password" MaxLength="32"></asp:TextBox>
                            <i class="fa-solid fa-eye" id="showConfirmPassword" onclick="showConfirmPassword()"></i>
                        </div>
                        <div class="d-flex" style="position:relative">
                            <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                                  ControlToValidate="inputConfirmPassword"
                                  ErrorMessage="This field must be Filled!"
                                  ForeColor="Red" CssClass="validator">
                            </asp:RequiredFieldValidator>
                        </div>
                        
                        <asp:CompareValidator runat="server" ControlToCompare="inputNewPassword" ControlToValidate="inputConfirmPassword" ErrorMessage="Both password does not match!" ForeColor="Red" Display="Dynamic" CssClass="validator"/>
                    </div>

                    <asp:Label ID="lblPasswordError" runat="server" Text="" Visible="false" CssClass="mt-3 text-danger"></asp:Label>
                    <br />
                    <asp:Button ID="btmChangePassword" runat="server" Text="Change Password" CssClass="btn btn-primary mt-4" OnClick="btmChangePassword_Click"/>
            </div>
        </div>
    </div>
</asp:Content>