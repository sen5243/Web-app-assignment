<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="Assignment.view.PasswordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link rel="icon" type="image/x-icon" href="../assets/images/apple-fav.png" />
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.css" />

    <!--Internal CSS-->
    <style>
        body {height:100%}

    </style>
</head>
<body class="bg-image" style="background-image: url('../assets/images/background-grey-gradient.jpg');">
    <div class="vh-100 d-flex justify-content-center align-items-center">
        <div class="text-center px-5 py-5" style="background-color:#eeeeee;border-radius:50px">
            <image src="../assets/images/apple-id.png" alt="Apple ID"></image>
            <h3 class="py-4">Password Recovery</h3>

            <form id="loginUser" runat="server">
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" UserNameInstructionText="Enter your Email to receive your password." UserNameLabelText="Email: " UserNameRequiredErrorMessage="Email is required.">
                    <MailDefinition BodyFileName="~/view/PasswordRecovery.txt" Subject="Password Recovery">
                    </MailDefinition>
                    <UserNameTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0">
                                        <tr>
                                            <td align="center" colspan="2">Forgot Your Password?</td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">Enter your Email to receive your password.</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Email: </asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Email is required." ToolTip="Email is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="margin-top:5px">
                                                <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" ValidationGroup="PasswordRecovery1" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </UserNameTemplate>
                </asp:PasswordRecovery>
                <p class="text-center text-muted mt-4 mb-0">Not a member yet? 
                    <asp:HyperLink ID="linkSignUp" runat="server" Text="Sign Up" NavigateUrl="SignUp.aspx" CssClass="fw-bold text-body"></asp:HyperLink>
                </p>
                 
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="Return to Login" NavigateUrl="Login.aspx" CssClass="text-center text-muted mt-4 mb-0"></asp:HyperLink>
            </form>
        </div>
    </div>
</body>
</html>
