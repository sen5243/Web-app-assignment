<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerOrder.aspx.cs" Inherits="Assignment.view.admin.CustomerOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/view/admin/Customer.aspx">&lt;&lt; Back to Customer List</asp:HyperLink>
        <br />
        <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Customer Orders"></asp:Label>
        <br />
         <asp:GridView ID="gvOrderHistory" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" EmptyDataText="No History found!" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                        <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <div>
                                <a href='<%# Eval("Order_No", "CustomerOrderDetail.aspx?Order_No={0}") %>' class="button-link">Select</a>
                                <%-- <asp:Button ID="btnSelect" runat="server" Text="Select" CommandName="Select" CommandArgument='<%# Container.DataItemIndex %>' CssClass="select-button" />--%>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Order_Date" HeaderText="Order Date"/>
                    <asp:BoundField DataField="Total_Amount" HeaderText="Amount(RM)" />
                    <asp:BoundField DataField="Shipped_Date" HeaderText="Shipped Date" />
                    <asp:BoundField DataField="Ship_Address" HeaderText="Address" />
                    <asp:BoundField DataField="Ship_State" HeaderText="State" />
                    <asp:BoundField DataField="Ship_Postal_Code" HeaderText="Postal Code" />
                    <asp:BoundField DataField="Order_Status" HeaderText="Order Status" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />

<HeaderStyle CssClass="header" BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />

<RowStyle CssClass="rows"></RowStyle>
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
    </form>
</asp:Content>
