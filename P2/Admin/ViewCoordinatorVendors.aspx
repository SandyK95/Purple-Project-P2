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
    .auto-style5 {
        position: relative;
        width: 100%;
        min-height: 1px;
        -ms-flex: 0 0 100%;
        flex: 0 0 100%;
        max-width: 100%;
        font-size: large;
        color: #FFFFFF;
        padding-left: 15px;
        padding-right: 15px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class ="row">
        <div class ="auto-style5">
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
            <asp:GridView ID="gv_Coordinators" runat="server" AutoGenerateColumns="False" CellPadding="10" ForeColor="#333333" GridLines="None" Width="800px" CellSpacing="10">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CoordinatorID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:HyperLinkField DataNavigateUrlFields="CoordinatorID,Name" DataNavigateUrlFormatString="DeleteCoordinator.aspx?coordinatorid={0}&amp;name={1}" Text="Delete" ControlStyle-ForeColor="#CD5C5C"/>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
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
    </div>
    <div class="row">
        <div class="col-sm-12">
        </div>
    </div>
    <div class="row">
        <div class="auto-style5">

            <strong>View Vendor Details
        
        </strong>
        
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">

            <asp:GridView ID="gv_Vendors" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" Width="800px" AutoGenerateColumns="False" CellSpacing="10">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="VendorID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:HyperLinkField DataNavigateUrlFields="VendorID,Name" DataNavigateUrlFormatString="DeleteVendor.aspx?vendorid={0}&amp;name={1}" Text="Delete" ControlStyle-ForeColor="#CD5C5C"/>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <EmptyDataTemplate>
                    Please create new Vendor.
                </EmptyDataTemplate>
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
    </div>
    <div class="row">
        <div class="col-sm-12">

        </div>
    </div>
</asp:Content>
