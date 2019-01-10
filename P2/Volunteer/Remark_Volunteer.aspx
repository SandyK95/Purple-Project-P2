<%@ Page Title="" Language="C#" MasterPageFile="~/VolunteerTemplate.Master" AutoEventWireup="true" CodeBehind="Remark_Volunteer.aspx.cs" Inherits="P2.Volunteer.Remark_Volunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gv_remark" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="RemarkID" HeaderText="ID" />
            <asp:BoundField DataField="FoodRemark" HeaderText="Remark" />
            <asp:BoundField DataField="VendorID" HeaderText="VendorID" />
            <asp:BoundField DataField="ElderID" HeaderText="ElderID" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <p>

    </p>
</asp:Content>
