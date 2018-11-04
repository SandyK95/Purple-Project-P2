<%@ Page Title="" Language="C#" MasterPageFile="~/VolunteerTemplate.Master" AutoEventWireup="true" CodeBehind="ViewElder.aspx.cs" Inherits="P2.Volunteer.ViewElder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>Distribution Status</td>
        </tr>
        <tr>
            <td>Search Method</td>
            <td>
                <asp:RadioButton ID="rdoName" runat="server" Checked="True" GroupName="SearchMethod" Text="Name" />
&nbsp;<asp:RadioButton ID="rdoSerial" runat="server" GroupName="SearchMethod" Text="Serial Numbers" />
            </td>
        </tr>
        <tr>
            <td>Enter Elder Name/Serial Number: </td>
            <td>
                <asp:TextBox ID="txtSearchElderInput" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Height="37px" OnClick="btnSearch_Click" Text="Search" />
&nbsp;<asp:Button ID="btnReset" runat="server" Height="37px" OnClick="btnReset_Click" Text="Reset" Width="97px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblSearchedElder" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:GridView ID="gvElderN" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="600px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
