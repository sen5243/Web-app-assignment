<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerDetail.aspx.cs" Inherits="Assignment.view.admin.CustomerDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/view/admin/Customer.aspx">&lt;&lt; Return to Customer List</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Customer Name: "></asp:Label>
        <asp:Label ID="lblCustomer" runat="server" Text="[CustomerNameLabel]"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Lock Status: "></asp:Label>
        <asp:Label ID="lblLock" runat="server" Text="[LockStatusLabel]"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="Locked Date: "></asp:Label>
        <asp:Label ID="lblDate" runat="server" Text="[LockDateLabel]"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnUnlock" runat="server" OnClick="btnUnlock_Click" Text="Unlock User" />
        <asp:Button ID="btnOrder" runat="server" OnClick="btnOrder_Click" Text="Order Detail" />
        <br />
        <asp:Label ID="lblMsg" runat="server" ForeColor="#003366" Text="[lblMsg]" Visible="False"></asp:Label>
    </form>
</asp:Content>
