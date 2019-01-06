<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="DeleteVendor.aspx.cs" Inherits="P2.Admin.DeleteVendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
    <div class="text-center">
                    Are you sure want to delete records for <strong>
    <asp:Label ID="lblVendorID" runat="server" Text="ID"></asp:Label>
&nbsp;-
    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <br />
    </strong>
            <asp:Button ID="btnYes" runat="server" OnClick="btnYes_Click" Text="Yes"/>
&nbsp;<asp:Button ID="btnNo" runat="server" Text="No" OnClick="btnNo_Click" />
    <br />
    </div>
    </div>
</asp:Content>
