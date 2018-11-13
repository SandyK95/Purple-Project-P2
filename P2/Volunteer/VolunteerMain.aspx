<%@ Page Title="" Language="C#" MasterPageFile="~/VolunteerTemplate.Master" AutoEventWireup="true" CodeBehind="VolunteerMain.aspx.cs" Inherits="P2.Volunteer.VolunteerMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">

        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="text-center">
            <asp:GridView ID="gvElderPrepare" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="242px" Width="485px" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="ElderID" DataNavigateUrlFormatString="UpdateStatus.aspx?ElderID={0}" DataTextField="ElderID" HeaderText="Elder ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Prepare" HeaderText="Prepare Status" />
                    <asp:BoundField DataField="NameLocation" HeaderText="Collective Place" />
                </Columns>
            <EditRowStyle BackColor="#2461BF" />
                <EmptyDataTemplate>
                    No updated list yet!
                </EmptyDataTemplate>
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
    </div>  
</asp:Content>
