<%@ Page Title="" Language="C#" MasterPageFile="~/VolunteerTemplate.Master" AutoEventWireup="true" CodeBehind="ViewElder.aspx.cs" Inherits="P2.Volunteer.ViewElder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gvElderN {
            width: 100%;
            word-wrap:break-word;
            table-layout:fixed;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            Distribution Status
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            Search Method
        </div>
        <div class="col-sm-6">
            <asp:RadioButton ID="rdoName" runat="server" Checked="True" GroupName="SearchMethod" Text="Name" />
&nbsp;<asp:RadioButton ID="rdoSerial" runat="server" GroupName="SearchMethod" Text="Serial Numbers" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            Enter Elder Name/Serial Number:
        </div>
        <div class="col-sm-4">
                <asp:TextBox ID="txtSearchElderInput" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
                &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
&nbsp;<asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
                <asp:Label ID="lblSearchedElder" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:GridView ID="gvElderN" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="SerialNo" HeaderText="Serial No" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="ElderID" DataNavigateUrlFormatString="UpdateStatus.aspx?ElderID={0}" Text="Change Status" />
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
</asp:Content>
