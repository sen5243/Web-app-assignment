<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fail.aspx.cs" Inherits="Assignment.cart.fail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Payment Failed</title>
    <link href="../assets/css/checkout.css" rel="stylesheet" type="text/css" />
    <script src="../assets/javascript/checkout.js" defer></script>
    <script>
        function clearStorage() {
            localStorage.clear(); //clear local storage
        }
    </script>
</head>
<body>
    <form id="form1" action="../index.aspx" runat="server" style="font-size: x-large">
        <div>
            <strong>Payment Failed</strong></div>
        <p style="font-size: small">Some Errors Occured, Please try again</p>
                            
        <div class="cart-col">
 
            <button type="submit" class="btn" onclick="clearStorage()" style="width:30%">Proceed to Home</button>
        </div>
    </form>
</body>
</html>
