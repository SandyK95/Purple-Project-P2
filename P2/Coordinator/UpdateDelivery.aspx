<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorTemplate.Master" AutoEventWireup="true" CodeBehind="UpdateDelivery.aspx.cs" Inherits="P2.Coordinator.UpdateDelivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style13"><strong>Create / Update Delivery</strong></td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Name:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="lblName" runat="server" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>SerialNo:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="lblSerialNo" runat="server" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><b>D</b><span class="auto-style5">elivery Status</span></td>
            <td class="auto-style9">
                <asp:Button ID="btn_Submit" CssClass="btn btn-success" runat="server" OnClick="btn_Submit_Click" Text="Update" />
&nbsp;
                <asp:Button ID="btn_Back" CssClass="btn btn-secondary" runat="server" OnClick="btn_Back_Click" Text="Back" />
&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style5">
                <br />
                <asp:Label ID="lblMessage" CssClass="label label-info" runat="server" style="color: #FFFFFF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
