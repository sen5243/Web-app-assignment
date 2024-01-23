<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Assignment.view.admin.Chart" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
    
        .whole_repeater {
            margin: 50px auto 0;
            width: 60%;
            border: 2px solid #ccc;
            padding: 30px;
            background-color: #FFD580;
            border-radius: 25px;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-header" style="text-align: center; height: 10px">
        <h1 style="color: black">

            <i>Reports and Analytics</i>
        </h1>
    </div>

    <form id="form1" runat="server">
        <div class="whole_repeater">
             <h5 style="text-align: left;">
                 <br /> Year Selection :
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left:10px;">
             </asp:DropDownList>
            </h5>
            <br />
            <h3 style="color: dimgray">

                <i>Number of Apple Products Sold </i>

            </h3>
           

            <asp:Chart ID="Chart1" runat="server"  style="margin: 0 auto;" BackColor="#FFD580">
                <Legends>
                    <asp:Legend Alignment="Center" Docking="Bottom" Name="Dotnet Chart Example" />
                </Legends>
                <series>
                    <asp:Series ChartType="Pie" CustomProperties="DrawingStyle=Pie,PieDrawingStyle=Concave, MaxPixelPointWidth=50" Name="Series1" IsValueShownAsLabel="True" ShadowOffset="2">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1" BackColor="#FFD580" >
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <br />
             
            <br />
           
            
           
             <h3 style="color: dimgray">

            <i>Total Sales Amount(Rm) of Apple Products </i>
        </h3>


            <asp:Chart ID="Chart2" runat="server" BorderlineColor="Black"
                BorderlineDashStyle="Solid" BackColor="#FFD580" BackGradientStyle="TopBottom"
                Height="250px" Width="350px">
                 <Series>
                     <asp:Series Name="Series1" ChartType="StackedColumn" YValuesPerPoint="2" CustomProperties="DrawingStyle=Cylinder,MaxPixelPointWidth=50"
                         ShadowOffset="1" IsValueShownAsLabel="True">
                     </asp:Series>
                 </Series>
                 <ChartAreas>
                     <asp:ChartArea Name="ChartArea1" BackGradientStyle="TopBottom"
                         BackSecondaryColor="#FFD580" BorderDashStyle="Solid" BorderWidth="2">
                         <AxisX Title="Months">

                             <MajorGrid Enabled="False" />
                         </AxisX>
                         <AxisY Title="Sales Amount (RM)">
                         </AxisY>
                     </asp:ChartArea>
                 </ChartAreas>
             </asp:Chart>

        </div>
    </form>
    <br />
</asp:Content>
