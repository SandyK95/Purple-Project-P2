<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ViewCoordinatorVendors.aspx.cs" Inherits="P2.Admin.Requests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            font-size: xx-large;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style4 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class ="row">
        <div class ="auto-style3">
            <strong>View Coordinator Details
        </strong>
        </div>
    </div>
        <div class="row">
        <div class="auto-style4">

        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <asp:GridView ID="gv_Coordinators" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="800px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CoordinatorID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:HyperLinkField DataNavigateUrlFields="CoordinatorID,Name" DataNavigateUrlFormatString="DeleteCoordinator.aspx?coordinatorid={0}&amp;name={1}" Text="Delete" />
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
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
        </div>
    </div>
    <div class="row">
        <div class="auto-style3">

            <strong>View Vendor Details
        
        </strong>
        
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">

            <asp:GridView ID="gv_Vendors" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="800px" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="VendorID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:HyperLinkField DataNavigateUrlFields="VendorID,Name" DataNavigateUrlFormatString="DeleteVendor.aspx?vendorid={0}&amp;name={1}" Text="Delete" />
                </Columns>
                <EmptyDataTemplate>
                    Please create new Vendor.
                </EmptyDataTemplate>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">

        </div>
    </div>
</asp:Content>
