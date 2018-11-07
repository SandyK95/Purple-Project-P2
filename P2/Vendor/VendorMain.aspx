<%@ Page Title="" Language="C#" MasterPageFile="~/VendorTemplate.Master" AutoEventWireup="true" CodeBehind="VendorMain.aspx.cs" Inherits="P2.Vendor.VendorMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
    View Informations Dietary Needs<br />
&nbsp;</p>
    <div class="text-center">
        <asp:GridView ID="gvElders" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:HyperLinkField DataTextField="ElderID" HeaderText="ElderID" />
                <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" />
                <asp:BoundField DataField="Dietary" HeaderText="Dietary" />
                <asp:BoundField DataField="HealthCondition" HeaderText="Health Condition" />
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
    <br />
</asp:Content>
