<%@ Page Title="" Language="C#" MasterPageFile="~/VolunteerTemplate.Master" AutoEventWireup="true" CodeBehind="ViewElder.aspx.cs" Inherits="P2.Volunteer.ViewElder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gvElderN {
            width: 100%;
            word-wrap:break-word;
            table-layout:fixed;
        }
        .auto-style3 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: 0px;
            top: 1px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style4 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <strong><span class="auto-style5">Distribution Status</span></strong><br />
        </div>
    </div>
    <div class="row">
        <div class="auto-style4">
            <span class="auto-style6">Search Method</span>
        </div>
        <div class="auto-style3">
            <asp:RadioButton ID="rdoName" runat="server" Checked="True" GroupName="SearchMethod" Text="Name" />
&nbsp;<asp:RadioButton ID="rdoSerial" runat="server" GroupName="SearchMethod" Text="Serial Numbers" />
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <strong>Enter Elder Name/Serial Number:
            <br />
            </strong>
        </div>
        <div class="col-sm-4">
                <asp:TextBox ID="txtSearchElderInput" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
                &nbsp;<asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" OnClick="btnSearch_Click" Text="Search" />
&nbsp;<asp:Button ID="btnReset" CssClass="btn btn-link" runat="server" OnClick="btnReset_Click" Text="Reset" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
                <asp:Label ID="lblSearchedElder" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:GridView ID="gvElderN" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False" Height="100%" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="SerialNo" HeaderText="Serial No" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="ElderID" DataNavigateUrlFormatString="UpdateStatus.aspx?ElderID={0}" Text="Change Status" />
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
</asp:Content>
