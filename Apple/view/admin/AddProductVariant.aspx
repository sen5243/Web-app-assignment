<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProductVariant.aspx.cs" Inherits="Assignment.AddProductVariant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Insert Variant
    </p>
    <form id="addVariantForm" runat="server">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Variant_ID], ([Size]+ ' ' +[Colour]+ ' ' +[Additional_Feature]) AS Features FROM [Variant]"></asp:SqlDataSource>
        <asp:FormView ID="fvInsertVariant" runat="server" DefaultMode="Insert" InsertMethod="fvInsertVariant_InsertItem"
            ItemType="Assignment.Models.Product_Variant" DataKeyNames="Product_Id, Variant_Id" OnItemCommand="fvInsertVariant_ItemCommand"
           >
            <InsertItemTemplate>
                
                <br />
                <asp:Label ID="Label4" runat="server" Text="Product Name"></asp:Label>
                <asp:DropDownList ID="pIdList" runat="server" DataSourceID="SqlDataSource2" DataTextField="Product_Name" DataValueField="Product_ID"></asp:DropDownList>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Variant"></asp:Label>
                <asp:DropDownList ID="vIdList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Features" DataValueField="Variant_ID"></asp:DropDownList>
                 <br />
                <asp:Label ID="Label1" runat="server" Text="Variant Name"></asp:Label>
                <asp:TextBox ID="txtCategoryName" runat="server" Text='<%# Bind("Variant_Name") %>'></asp:TextBox>
                <asp:RequiredFieldValidator id="validateVariant" ControlToValidate="txtCategoryName" ErrorMessage="Please fill in the Variant Name" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Unit Price"></asp:Label>
                <asp:TextBox ID="txtDescription" runat="server" Text='<%# Bind("Unit_Price") %>'></asp:TextBox>
                <asp:RequiredFieldValidator id="validatePrice" ControlToValidate="txtDescription" ErrorMessage="Please fill in the Unit Price" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Insert Image"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" ImageUrl=""/>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Units in Stock"></asp:Label>
                <asp:TextBox ID="txtStock" runat="server" Text='<%# Bind("Units_In_Stock") %>'></asp:TextBox>
                <asp:RequiredFieldValidator id="validateStock" ControlToValidate="txtStock" ErrorMessage="Please fill in the Unit In Stock" runat="server" CssClass="validator" ForeColor="Red" Display="Dynamic"/>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Create" CommandName="Insert" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="false"  />
            </InsertItemTemplate>
        </asp:FormView>
    </form>

</asp:Content>
