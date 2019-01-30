<%@ Page Title="" Language="C#" MasterPageFile="~/VendorTemplate.Master" AutoEventWireup="true" CodeBehind="View_DietaryNeeds.aspx.cs" Inherits="P2.Vendor.View_DietaryNeeds" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
                <p class="auto-style3"><strong>View Elder Dietary Needs</strong></p>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">

        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <asp:GridView ID="gv_Elders" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" Height="100%">
                <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:HyperLinkField DataTextField="ElderID" HeaderText="ID" DataNavigateUrlFields="ElderID" DataNavigateUrlFormatString="Edit_DietaryNeeds.aspx?ElderID={0} " />
                        <asp:BoundField DataField="SerialNo" HeaderText="Serial No" />
                        <asp:BoundField DataField="Dietary" HeaderText="Dietary Needs" />
                        <asp:BoundField DataField="HealthCondition" HeaderText="Health Condition" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:BoundField DataField="Prepare" HeaderText="Prepare" />
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
    <br />
    <div class="row">
        <div class="col-sm-12">
            <asp:GridView ID="gv_ShowData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gv_ShowData_RowCommand" Width="100%" Height="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="bg-light" Text="Update" CommandName="Select"/>
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
            <asp:Label runat="server" ID="lblTest" CssClass="label label-info" Visible="False"></asp:Label>
        </div>
    </div>
    <br />
</asp:Content>
