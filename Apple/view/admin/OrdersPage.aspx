<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrdersPage.aspx.cs" Inherits="Assignment.view.admin.OrdersPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
        .gridview-container {
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            height: 160vh;
        }

        #GridView1 {
            width: 100%; /* Set the width to 100% of its parent container */
            height: 200px; /* Set the height to a specific value, such as 400px */
        }

        body {
            background-color: gray;
            margin: 0;
            padding: 0;
        }

        .action-button {
            background-color: mediumseagreen;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }

        .GridViewHeaderCell {
            text-align: center; /* Center-align the header text */
        }

        .button-link {
            display: inline-block;
            padding: 8px 16px;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            border: 1px solid #ccc;
            background-color: mediumseagreen;
            color: #333;
            border-radius: 5px;
            cursor: pointer;
        }

            .button-link:hover {
                background-color: mediumspringgreen;
            }

      
    </style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/font-awesome.min.css" />
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header" style="text-align: center; height: 10px">
        <h1 style="color: black">
            <i>Order Management</i>
        </h1>
    </div>
    <form id="form1" runat="server">
        <div class="gridview-container">
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <HeaderStyle CssClass="GridViewHeaderCell" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <div>
                                <a href='<%# Eval("Order_No", "UpdatePage.aspx?Order_No={0}") %>' class="button-link">Select</a>
                               
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                  
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#E7E7E7" ForeColor="Black" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </form>
</asp:Content>
