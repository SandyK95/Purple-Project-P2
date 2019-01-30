<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="VolunteerUpdate.aspx.cs" Inherits="P2.Admin.VolunteerUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style3"><strong>Update with an existing Coordinator</strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Name:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Coordinator Name:</strong></td>
            <td class="auto-style9">
                <asp:DropDownList ID="dd_Coordinator" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btn_Submit" CssClass="btn btn-success" runat="server" OnClick="btn_Submit_Click" Text="Update" />
&nbsp;
                <asp:Button ID="btn_Back" CssClass="btn btn-secondary" runat="server" OnClick="btn_Back_Click" Text="Back" Width="81px" />
&nbsp;<br />
                <asp:Label ID="lblMessage" CssClass="label label-info" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
