<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductVariant.aspx.cs" Inherits="Assignment.ProductVariant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Product Variant List
    </p>
    <form id="productVariantForm" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Product_ID,Variant_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
            <asp:BoundField DataField="Variant_ID" HeaderText="Variant_ID" ReadOnly="True" SortExpression="Variant_ID" />
            <asp:BoundField DataField="Variant_Name" HeaderText="Variant_Name" SortExpression="Variant_Name" />
            <asp:BoundField DataField="Unit_Price" HeaderText="Unit_Price" SortExpression="Unit_Price" />
            <asp:BoundField DataField="Units_In_Stock" HeaderText="Units_In_Stock" SortExpression="Units_In_Stock" />
            <asp:ImageField DataImageUrlField="Image_Path" HeaderText="Image" ReadOnly="True">
                 <ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product_Variant] WHERE [Product_ID] = @Product_ID AND [Variant_ID] = @Variant_ID" InsertCommand="INSERT INTO [Product_Variant] ([Product_ID], [Variant_ID], [Variant_Name], [Unit_Price], [Image], [Units_In_Stock]) VALUES (@Product_ID, @Variant_ID, @Variant_Name, @Unit_Price, @Image, @Units_In_Stock)" SelectCommand="SELECT [Product_ID], [Variant_ID], [Variant_Name], [Unit_Price], [Image_Path], [Units_In_Stock] FROM [Product_Variant] WHERE [Product_ID] = @Product_ID" UpdateCommand="UPDATE [Product_Variant] SET [Variant_Name] = @Variant_Name, [Unit_Price] = @Unit_Price,[Units_In_Stock] = @Units_In_Stock WHERE [Product_ID] = @Product_ID AND [Variant_ID] = @Variant_ID">
        <DeleteParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Variant_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Variant_ID" Type="Int32" />
            <asp:Parameter Name="Variant_Name" Type="String" />
            <asp:Parameter Name="Unit_Price" Type="Decimal" />
            <asp:Parameter Name="Image" />
            <asp:Parameter Name="Units_In_Stock" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Product_ID" QueryStringField="Product_ID" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Variant_Name" Type="String" />
            <asp:Parameter Name="Unit_Price" Type="Decimal" />
            <asp:Parameter Name="Units_In_Stock" Type="Int32" />
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Variant_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AddProductVariant.aspx">Add Product Variant</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Menu.aspx">Back to Menu</asp:HyperLink>
        </form>
</asp:Content>
