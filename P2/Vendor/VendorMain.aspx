<%@ Page Title="" Language="C#" MasterPageFile="~/VendorTemplate.Master" AutoEventWireup="true" CodeBehind="VendorMain.aspx.cs" Inherits="P2.Vendor.VendorMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    View Informations Dietary Needs<br />
&nbsp;<asp:GridView ID="gvElders" runat="server">
    </asp:GridView>
    <br />
</asp:Content>
