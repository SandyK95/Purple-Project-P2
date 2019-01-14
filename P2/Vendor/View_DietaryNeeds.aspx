﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VendorTemplate.Master" AutoEventWireup="true" CodeBehind="View_DietaryNeeds.aspx.cs" Inherits="P2.Vendor.View_DietaryNeeds" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
                <p>View Elder Dietary Needs</p>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">

        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <asp:GridView ID="gv_Elders" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1051px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:HyperLinkField DataTextField="ElderID" HeaderText="ID" DataNavigateUrlFields="ElderID" DataNavigateUrlFormatString="Edit_DietaryNeeds.aspx?ElderID={0} " />
                        <asp:BoundField DataField="SerialNo" HeaderText="Serial No" />
                        <asp:BoundField DataField="Dietary" HeaderText="Dietary Needs" />
                        <asp:BoundField DataField="HealthCondition" HeaderText="Health Condition" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:BoundField DataField="Prepare" HeaderText="Prepare" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-12">
            <asp:GridView ID="gv_ShowData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gv_ShowData_RowCommand">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" Text="Update" CommandName="Select"/>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:Label runat="server" ID="lblTest" Visible="False"></asp:Label>
        </div>
    </div>
    <br />
</asp:Content>
