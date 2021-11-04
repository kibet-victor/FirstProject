<%@ Page Title="" Language="C#" MasterPageFile="~/HRMSmaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NewHRMS.Default" %>


<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register TagPrefix="ajaxToolkit" Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
      <form id="form1" runat="server">

    <div class="row"><br />
         
                  
                    <div class="col-lg-6 col-6">
                        <asp:Chart ID="Chart1"  runat="server" Width="657px">
                            <Series>
                                <asp:Series Name="Series1" IsVisibleInLegend="true" ChartType="Doughnut" Legend="Legend1" IsValueShownAsLabel="True" XValueMember="Rank" YValueMembers="NumberOfOfficers"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Alignment="Center" IsEquallySpacedItems="false" Name="Legend1" Title="RANK" TitleFont="Segoe UI, 12pt, style=Bold" LegendStyle="Row">
                                </asp:Legend>
                            </Legends>
                            <Titles>
                                <asp:Title Font="Segoe UI, 20pt," Name="Title1" Text="STATISTICS BY RANK">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>
                    </div>


                    <div class="col-lg-6 col-6">
                        <asp:Chart ID="Chart2" runat="server" Width="800px">
                            <Series>
                                <asp:Series Name="Series1" IsVisibleInLegend="false" Legend="Legend1" IsValueShownAsLabel="True" XValueMember="Gender" YValueMembers="NumberOfOfficers"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1" Title="SEX" LegendStyle="Row" Alignment="Center" IsEquallySpacedItems="false" TitleFont="Segoe UI, 12pt, style=Bold">
                                </asp:Legend>
                            </Legends>
                            <Titles>
                                <asp:Title Font="Segoe UI, 20pt" Name="Title1" Text="STATISTICS BY GENDER">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>
                    </div>
             
        </div>
         



</form>
</asp:Content>
