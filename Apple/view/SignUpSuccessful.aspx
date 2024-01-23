<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpSuccessful.aspx.cs" Inherits="Not_Apple.view.SignUpSuccessful" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registered Successfully!</title>
    <link rel="icon" type="image/x-icon" href="../assets/images/apple-fav.png" />
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.css" />
    <meta http-equiv="Refresh" content="5;url=Login.aspx" />

    <!--Internal CSS-->
    <style>
        body {height:100%}
    </style>

</head>
<body class="bg-image" style="background-image: url('../assets/images/background-grey-gradient.jpg');">
    <div class="vh-100 d-flex justify-content-center align-items-center container">
        <div class="text-center px-5 py-5" style="background-color:#eeeeee;border-radius:50px">
            <image src="../assets/images/apple-id.png" alt="Apple ID" class="mb-4"></image>
            <h2 class="text-success">Registered Successfully!</h2>
            <p>Redirecting you to Login Page...</p>

            <p class="text-muted mt-5 mb-0">If you are not redirecting in 5 seconds...
            <a href="Login.aspx"class="fw-bold text-body"><u class="text-primary">Click Here</u></a></p>
        </div>
    </div>
</body>
</html>
