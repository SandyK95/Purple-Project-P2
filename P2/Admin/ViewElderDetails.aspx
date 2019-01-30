<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ViewElderDetails.aspx.cs" Inherits="P2.Admin.ViewElderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col-sm-12"><br />
            <p class="auto-style4"><strong>View Elder Details</strong></p>
            <p>&nbsp;</p>
        </div>
    </div>
    <div class="row">
        <div class="auto-style3">

            <div class="text-left">

            <asp:GridView ID="gv_Elder" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" Width="100%" CellSpacing="10">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="ElderID" DataNavigateUrlFormatString="ElderDetails.aspx?elderid={0}" HeaderText="ID" Text="Edit" ControlStyle-ForeColor="#CD5C5C">
                    <ItemStyle Font-Bold="True" />
                    </asp:HyperLinkField>
                </Columns>
                <EditRowStyle BackColor="#DC143C" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#D8BFD8" Font-Bold="True" ForeColor="Black" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F5F5F5" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            </div>

            <br />

        </div>
    </div>
</asp:Content>
