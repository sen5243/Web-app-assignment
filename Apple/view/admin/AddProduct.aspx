<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Assignment.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Insert Product
    </p>
    <form id="addPeoductForm" runat="server">
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        
        <asp:FormView ID="fvAddProduct" runat="server" DefaultMode="Insert" InsertMethod="fvAddProduct_InsertItem"
            ItemType="Assignment.Models.Product" DataKeyNames="Product_Id" OnItemCommand="fvAddProduct_ItemCommand" OnPageIndexChanging="fvAddProduct_PageIndexChanging">
            <InsertItemTemplate>
                <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                <asp:TextBox ID="txtProductName" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                <asp:RequiredFieldValidator id="validateCat" ControlToValidate="txtProductName" ErrorMessage="Please fill in the product name" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                <asp:TextBox ID="txtDescription" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Category Id"></asp:Label>
                <asp:DropDownList ID="ddlCat" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_Name" DataValueField="Category_ID"></asp:DropDownList>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Insert Image"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" ImageUrl=""/>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Create" CommandName="Insert" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" CommandName="Cancel"  CausesValidation="false" />
                <br />
                <asp:Label ID="LabelResult" runat="server" Text="label"></asp:Label>

            </InsertItemTemplate>
        </asp:FormView>
    </form>
</asp:Content>
