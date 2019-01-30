<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="DeleteVendor.aspx.cs" Inherits="P2.Admin.DeleteVendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
    <div class="text-center">
                    <table align="center" class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>Are you sure want to delete records for <strong>
    <asp:Label ID="lblVendorID" runat="server" Text="ID"></asp:Label>
&nbsp;-
    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
    </strong>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
            <asp:Button ID="btnYes" CssClass="btn btn-outline-danger" runat="server" OnClick="btnYes_Click" Text="Yes"/>
&nbsp;<asp:Button ID="btnNo" CssClass="btn btn-light" runat="server" Text="No" OnClick="btnNo_Click" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
    <br />
    </div>
    </div>
    </div>        
</asp:Content>
