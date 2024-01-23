<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Assignment.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Insert Category
    </p>
    <form id ="addCategoryForm" runat="server">
    <asp:FormView ID="fvInsertCategory" runat="server" DefaultMode="Insert" InsertMethod="fvInsertCategory_InsertItem"
        ItemType="Assignment.Models.Category" DataKeyNames="Category_Id"  OnItemCommand="fvInsertCategory_ItemCommand">
        <InsertItemTemplate>
            <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
            <asp:TextBox ID="txtCategoryName" runat="server" Text='<%# Bind("Category_Name") %>'></asp:TextBox>
            <asp:RequiredFieldValidator id="validateCat" ControlToValidate="txtCategoryName" ErrorMessage="Please fill in the category name" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="txtDescription" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Create" CommandName="Insert" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="false" />
            

        </InsertItemTemplate>
    </asp:FormView>
        </form>
</asp:Content>
