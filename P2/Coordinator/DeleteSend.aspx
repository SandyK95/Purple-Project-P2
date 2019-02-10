<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorTemplate.Master" AutoEventWireup="true" CodeBehind="DeleteSend.aspx.cs" Inherits="P2.Coordinator.DeleteSend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            color: #fff;
            text-align: center;
        }
        .text-center {
            text-align:center;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
    <div class="text-left">
        <table style="align-content:center" class="w-100">
            <tr>
                <td class="text-center">&nbsp;</td>
                <td class="auto-style7">Are you sure want to delete records for <strong>
                    <asp:Label ID="lblVolunteerID" runat="server" Text="ID"></asp:Label>
                    &nbsp;-
    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </strong>
                </td>
                <td class="text-center">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;</td>
                <td class="text-center">&nbsp;</td>
                <td class="text-center">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;</td>
                <td>
                    <asp:Button ID="btnYes" CssClass="btn btn-danger" runat="server" OnClick="btnYes_Click" Text="Yes" />
                    &nbsp;<asp:Button ID="btnNo" CssClass="btn btn-light" runat="server" Text="No" OnClick="btnNo_Click" />
                </td>
                <td class="text-center">&nbsp;</td>
            </tr>
        </table>
                    <div class="text-center">
    <br />
    </div>
    </div>
    </div>
</asp:Content>
