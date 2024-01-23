<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="newweb2.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

.btn:hover {
    background-color: #e2e2e2;
    color: #000000;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <button class="btn" onclick="location.href = 'Category.aspx'" style="margin-top:5%; width:30%; background-color: #000000; color: #FFFFFF; font-weight: bolder;">Category List Page</button><br /><br />
            <button  class="btn" onclick="location.href ='Product.aspx'" style="width:30%; background-color: #000000; color: #FFFFFF; font-weight: bolder;">Product List Page</button>
</asp:Content>
