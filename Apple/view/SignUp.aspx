<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Not_Apple.view.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="icon" type="image/x-icon" href="../assets/images/apple-fav.png" />
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <!--Internal CSS-->
    <style>
        body {height:100%}

        .fa-eye{
            cursor: pointer;
            color:lightgray;
        }

        .fa-eye-slash{
            cursor: pointer;
            color:lightgray;
        }

        .validator{
            font-size:12px;
            position:relative;
        }
    </style>

    <!--Internal Javascript-->
    <script>
        function disableSubmit() {
            document.getElementById("btnRegister").disabled = true;
        }

        function RestrictSpace() {
            if (event.keyCode == 32) {
                return false;
            }
        }

        function activateButton(element) {

            if (element.checked) {
                document.getElementById("btnRegister").disabled = false;
            }
            else {
                document.getElementById("btnRegister").disabled = true;
            }
        }

        function showPassword() {
            var Password = document.getElementById("inputPassword");
            var toggle = document.getElementById("showPassword");
            if (Password.type == "password") {
                Password.type = "text";
                toggle.classList.remove("fa-eye");
                toggle.classList.add("fa-eye-slash");
            }
            else {
                Password.type = "password";
                toggle.classList.remove("fa-eye-slash");
                toggle.classList.add("fa-eye");
            }
        }

        function showConfirmPassword() {
            var confirmPassword = document.getElementById("inputConfirmPassword");
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
</head>

<body class="bg-image" style="background-image: url('../assets/images/background-grey-gradient.jpg')" onload="disableSubmit()">
    <div class="vh-100 d-flex justify-content-center align-items-center">
        <div class="px-5 py-5 text-center" style="background-color:#eeeeee;border-radius:50px">
            <image src="../assets/images/apple-id.png" alt="Apple ID" class="mb-1"></image>
            <h3 class="pt-3 pb-1">Create Apple ID.</h3>

            <form id="SignUp" runat="server">
                <div class="form-outline mt-3">
                    <asp:TextBox ID="inputFullName" runat="server" placeholder="Full Name" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-outline mt-3">
                  <asp:TextBox ID="inputEmail" runat="server" placeholder="Email Address" CssClass="form-control" TextMode="Email" onkeypress="return RestrictSpace()"></asp:TextBox>
                </div>

                <div class="form-outline mt-3 d-flex align-items-center">
                  <asp:TextBox ID="inputPassword" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password" onkeypress="return RestrictSpace()"></asp:TextBox>
                    <i class="fa-solid fa-eye" id="showPassword" onclick="showPassword()" aria-hidden="true"></i>
                </div>

                <div class="form-outline mt-3 d-flex align-items-center">
                  <asp:TextBox ID="inputConfirmPassword" runat="server" placeholder="Confirm Password" CssClass="form-control" TextMode="Password" onkeypress="return RestrictSpace()"></asp:TextBox>
                    <i class="fa-solid fa-eye" id="showConfirmPassword" onclick="showConfirmPassword()"></i>
                </div>

                <div class="form-check d-flex justify-content-center mb-3">
                  <input class="form-check-input me-2" type="checkbox" id="form2Example3cg" onchange="activateButton(this)"/>
                  <label class="form-check-label">
                    I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                  </label>
                </div>

                <div class="d-flex flex-column">
                    <asp:RequiredFieldValidator id="validateName" ControlToValidate="inputFullName" ErrorMessage="Please enter Full Name!" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                    <asp:RequiredFieldValidator id="validateEmail" ControlToValidate="inputEmail" ErrorMessage="Please enter Email Address!" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                    <asp:RequiredFieldValidator id="validatePassword" ControlToValidate="inputPassword" ErrorMessage="Please enter Password!" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                    <asp:RequiredFieldValidator id="validateConfirmPassword" ControlToValidate="inputConfirmPassword" ErrorMessage="Please enter Confirm Password!" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="validateEmailFormat" runat="server" ErrorMessage="Invaid Email Format" ControlToValidate="inputEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                    <asp:CompareValidator runat="server" ControlToCompare="inputPassword" ControlToValidate="inputConfirmPassword" ErrorMessage="Passwords does not match." ForeColor="Red" Display="Dynamic" CssClass="validator"/>
                </div>

                <div class="mt-3 text-danger d-flex flex-column" style="font-size:12px">
                    <asp:Label ID="lblRegisterError" runat="server" Text="" Visible="false"></asp:Label>
                </div>

                <div class="d-flex justify-content-center">
                    <asp:Button id="btnRegister" runat="server" Text="Register" BorderStyle="Solid" CssClass="btn btn-success btn-block btn-md" OnClick="btnRegister_Click" />  
                </div>

                <hr class="my-4" />

                <p class="text-center text-muted mt-3 mb-0">Have already an account? 
                    <asp:HyperLink ID="linkSignUp" runat="server" Text="Login" NavigateUrl="Login.aspx" CssClass="fw-bold text-body"></asp:HyperLink></p>
              </form>
        </div>
    </div>
</body>
</html>