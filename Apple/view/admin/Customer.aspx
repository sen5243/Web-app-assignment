<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Assignment.Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Customer List
    </p>
    <form id="customerForm" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <div>
                                <a href='<%# Eval("Email_Address", "CustomerDetail.aspx?Email_Address={0}") %>' class="button-link">Select</a>
                               
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Email_Address" HeaderText="Email_Address" SortExpression="Email_Address" />
                <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Date_Of_Birth" HeaderText="Date_Of_Birth" SortExpression="Date_Of_Birth" />
                <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" SortExpression="Phone_No" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Postal_Code" HeaderText="Postal_Code" SortExpression="Postal_Code" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [Customer_ID] = @Customer_ID" InsertCommand="INSERT INTO [Customers] ([Email_Address], [Password], [Customer_Name], [Gender], [Date_Of_Birth], [Phone_No], [Address], [Postal_Code], [State]) VALUES (@Email_Address, @Password, @Customer_Name, @Gender, @Date_Of_Birth, @Phone_No, @Address, @Postal_Code, @State)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [Email_Address] = @Email_Address, [Password] = @Password, [Customer_Name] = @Customer_Name, [Gender] = @Gender, [Date_Of_Birth] = @Date_Of_Birth, [Phone_No] = @Phone_No, [Address] = @Address, [Postal_Code] = @Postal_Code, [State] = @State WHERE [Customer_ID] = @Customer_ID">
            <DeleteParameters>
                <asp:Parameter Name="Customer_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email_Address" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Customer_Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter DbType="Date" Name="Date_Of_Birth" />
                <asp:Parameter Name="Phone_No" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Postal_Code" Type="String" />
                <asp:Parameter Name="State" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email_Address" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Customer_Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter DbType="Date" Name="Date_Of_Birth" />
                <asp:Parameter Name="Phone_No" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Postal_Code" Type="String" />
                <asp:Parameter Name="State" Type="Int32" />
                <asp:Parameter Name="Customer_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Menu.aspx">Back to Menu</asp:HyperLink>
    </form>
</asp:Content>
