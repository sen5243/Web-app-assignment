<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="Assignment.view.admin.UpdatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .repeater_item {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px auto;
            background-color: floralwhite;
            max-width: 75%;
            height: auto;
            border-radius: 20px;
        }

        .whole_repeater {
            margin: 50px auto 0;
            width: 60%;
            border: 2px solid #ccc;
            padding: 30px;
            background-color: #FFD580;
            border-radius: 25px;
        }

        .repeater_item span {
            display: block;
            margin-bottom: 5px;
        }

        .product_image {
            width: 130px;
            height: auto;
            margin-right: 5px;
            margin-top: -17px;
            float: left;
        }

        .confirm_button {
            background-color: #FF6600;
        }

        .complete_button {
            background-color: #FF5050;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-header" style="text-align:center; height:10px">
        <h1 style="color: black">
       
         <i>Orders Details Management</i> 
        </h1>
      </div>
    
       <form id="form1" runat="server">
        <div class="whole_repeater">
            <div style="text-align:left; margin-left:120px;">
                <b>
                   <br />
                    OrderID: </b>&nbsp;<asp:Label ID="Order_NoLabel" runat="server" Text="Order_No"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="text-align:right; margin-right:120px"> <b>Status:</b>&nbsp;<asp:Label ID="StatusLabel" runat="server" Text="Status"></asp:Label></span>
            </div>
                      
            <br />
           <asp:Repeater ID="OrderDetailsRepeater" runat="server">
               <ItemTemplate>
                   <div class="repeater_item">
                       <%--<img src="assets/images/iphone-13-red.png" alt="Product Image" class="product_image">--%> <%--//for temporaray image ,later will get from database--%>
                         <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# Eval("Image_Path") %>' CssClass="product_image" />
                       <div style="font-weight:bold;">                          
                           <span style="text-align:left";>Product_ID: <%# Eval("Product_ID") %> &nbsp;&nbsp;Variant Name: <%# Eval("Variant_Name") %> </span>
                           <span style="text-align:left";>Quantity: <%# Eval("Quantity") %></span>
                           <span style="text-align:left";>Unit Price: <%# Eval("Unit_Price") %></span>
                           <span style="text-align:right";>Subtotal: <%# Eval("SubTotal") %> </span>
                       </div>                     
                   </div>
               </ItemTemplate>
            </asp:Repeater>
                               
            <br />
   
            <div style="text-align:right; font-weight:bold; margin-right:120px";>
               <%-- for prototype/ later will do based on sql--%>
                Total amount:
                <asp:Label ID="TotalAmountLabel" runat="server" Text="TotalAmount"></asp:Label> <br /> <br />
                <asp:Button ID="ConfirmOrderButton" runat="server" Text="Confirm Order" OnClick="ConfirmOrder_Click" CssClass="confirm_button"/> &nbsp;
                <asp:Button ID="CompleteOrderButton" runat="server" Text="Complete Order" OnClick="CompleteOrder_Click" CssClass="complete_button" />
            </div>

          
            
        </div>
    </form>

</asp:Content>
