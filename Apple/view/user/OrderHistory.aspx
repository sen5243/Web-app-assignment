<%@ Page Title="Order History" Language="C#" MasterPageFile="~/view/user/UserPortal.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="Not_Apple.view.user.WebForm3" %>
<asp:Content ID="OrderHistoryHead" ContentPlaceHolderID="cphHead" runat="server">
    <style>
        .mydatagrid
        {
        border: solid 2px black;
        color: black;
        }
        .header
        {
        background-color: #708090;
        border: none 0px transparent;
        height: 25px;
        text-align: center;
        font-size: 16px;
        }

        .rows
        {
        background-color: #fff;
        font-size: 14px;
        min-height: 25px;
        text-align: left;
        border: none 0px transparent;
        text-align:center;
        }
        .rows:hover
        {
        background-color: #C0C0C0;
        }

        .mydatagrid td
        {
        padding: 5px;
        }
        .mydatagrid th
        {
        padding: 5px;
        }

    </style>
</asp:Content>

<asp:Content ID="OrderHistoryBody" ContentPlaceHolderID="cphUser" runat="server">
    <div class="d-flex flex-column justify-content-center vh-100">

        <div class="w-25 my-4 mx-4">
            <a href="UserProfile.aspx">< Back to Profile</a>
        </div>

        <div class="d-flex flex-column align-items-center h-75">
            <div class="w-75">
                <h3>Order History</h3>
            </div>

            <asp:GridView ID="gvOrderHistory" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" EmptyDataText="No History found!">
                <Columns>
                    <asp:BoundField DataField="Order_Date" HeaderText="Order Date"/>
                    <asp:BoundField DataField="Total_Amount" HeaderText="Amount(RM)" />
                    <asp:BoundField DataField="Shipped_Date" HeaderText="Shipped Date" />
                    <asp:BoundField DataField="Ship_Address" HeaderText="Address" />
                    <asp:BoundField DataField="Ship_State" HeaderText="State" />
                    <asp:BoundField DataField="Ship_Postal_Code" HeaderText="Postal Code" />
                    <asp:BoundField DataField="Order_Status" HeaderText="Order Status" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>