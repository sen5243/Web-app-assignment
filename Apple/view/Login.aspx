<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Not_Apple.view.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link rel="icon" type="image/x-icon" href="../assets/images/apple-fav.png" />
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.css" />

    <!--Internal CSS-->
    <style>
        body {height:100%}

        .validator{
            font-size:12px;
        }
    </style>

    <!--Internal JavaScript-->
    <script>
        function showPassword() {
            var x = document.getElementById("inputPassword");
            if (x.type == "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</head>

<body class="bg-image" style="background-image: url('../assets/images/background-grey-gradient.jpg');">
    <div class="vh-100 d-flex justify-content-center align-items-center">
        <div class="text-center px-5 py-5" style="background-color:#eeeeee;border-radius:50px">
            <image src="../assets/images/apple-id.png" alt="Apple ID"></image>
            <h3 class="py-4">Sign In with Your User Account.</h3>

            <form id="loginUser" runat="server">
                <div class="form-outline my-3">
                  <asp:TextBox id="inputEmail" runat="server" placeholder="Email" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>

                <div class="form-outline my-1" style="text-align:left">
                  <asp:TextBox id="inputPassword" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>

                <div class="form-check d-flex mb-4 offset-1">
                  <input class="form-check-input me-2" type="checkbox" onclick="showPassword()"/>
                  <label class="form-check-label">Show Password</label>
                </div>

                <div class="d-flex flex-column">
                    <asp:RequiredFieldValidator id="validateEmail" ControlToValidate="inputEmail" ErrorMessage="Please enter Email!" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                    <asp:RequiredFieldValidator id="validatePassword" ControlToValidate="inputPassword" ErrorMessage="Please enter Password!" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                </div>

                <div class="my-3">
                    <asp:Label ID="lblLoginError" runat="server" Text="" Visible="false" class="text-danger"></asp:Label>
                </div>
                
                <div>
                    <asp:Button id="btnLogin" runat="server" Text="Log In" BorderStyle="Solid" CssClass="btn btn-success btn-block btn-md" OnClick="btnLogin_Click"/>
                </div>

                <hr class="my-4" />
                
                <p class="text-center text-muted mt-4 mb-0">Not a member yet? 
                    <asp:HyperLink ID="linkSignUp" runat="server" Text="Sign Up" NavigateUrl="SignUp.aspx" CssClass="fw-bold text-body"></asp:HyperLink>
                </p>
                 
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="Forgot Password? " NavigateUrl="PasswordRecovery.aspx" CssClass="text-center text-muted mt-4 mb-0"></asp:HyperLink>

            </form>
        </div>
    </div>
</body>
</html>