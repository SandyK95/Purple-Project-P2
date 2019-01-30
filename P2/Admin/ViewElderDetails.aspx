<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ViewElderDetails.aspx.cs" Inherits="P2.Admin.ViewElderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            text-align: left;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style4 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col-sm-12">
            <p class="auto-style4"><strong>View Elder Details</strong></p>
            <p>&nbsp;</p>
        </div>
    </div>
    <div class="row">
        <div class="auto-style3">

            <asp:GridView ID="gv_Elder" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="800px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="ElderID" DataNavigateUrlFormatString="ElderDetails.aspx?elderid={0}" HeaderText="ID" Text="Edit" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            <br />

        </div>
    </div>
</asp:Content>
