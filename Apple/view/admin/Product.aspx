<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Assignment.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Product List
    </p>
    <form id="productForm" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                        <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <div>
                                <a href='<%# Eval("Product_ID", "ProductVariant.aspx?Product_ID={0}") %>' class="button-link">Select</a>
                               
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" InsertVisible="False" ReadOnly="True" SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Category_ID" HeaderText="Category_ID" SortExpression="Category_ID" />

                <asp:HyperLinkField />

                <asp:ImageField DataImageUrlField="Image_Path" HeaderText="Image" ItemStyle-Width="50px" ControlStyle-Width="100" ControlStyle-Height="100">
                    <ControlStyle Height="100px" Width="100px"></ControlStyle>

                    <ItemStyle Width="50px"></ItemStyle>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Product_ID] = @Product_ID" InsertCommand="INSERT INTO [Product] ([Product_Name], [Description], [Image], [Category_ID]) VALUES (@Product_Name, @Description, @Image, @Category_ID)"
            SelectCommand="SELECT * FROM [Product]"
            UpdateCommand="UPDATE [Product] SET [Product_Name] = @Product_Name, [Description] = @Description, [Image] = @Image, [Category_ID] = @Category_ID WHERE [Product_ID] = @Product_ID">
            <DeleteParameters>
                <asp:Parameter Name="Product_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Image" Type="Object" />
                <asp:Parameter Name="Category_ID" Type="Int32" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Image" Type="Object" />
                <asp:Parameter Name="Category_ID" Type="Int32" />
                <asp:Parameter Name="Product_ID" Type="Int32" />
            </UpdateParameters>


        </asp:SqlDataSource>
        <asp:HyperLink ID="AddProductHyperlink" runat="server" NavigateUrl="AddProduct.aspx">Add Product</asp:HyperLink>
        <br />
        <asp:HyperLink ID="AddCategoryHyperlink" runat="server" NavigateUrl="AddCategory.aspx">Add Category</asp:HyperLink>
        <br />
        <asp:HyperLink ID="AddVariantHyperlink" runat="server" NavigateUrl="AddProductVariant.aspx">Add Variant</asp:HyperLink>
        <br />

    </form>
</asp:Content>

