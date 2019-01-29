<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorTemplate.Master" AutoEventWireup="true" CodeBehind="Remarks.aspx.cs" Inherits="P2.Coordinator.Remarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>Create Remarks</td>
        </tr>
        <tr>
            <td>From:&nbsp;</td>
            <td>
                <asp:Label ID="lblCoordinatorEmail" runat="server"></asp:Label>
                ,
                <asp:Label ID="lblCoordinatorName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>To:</td>
            <td>
                <asp:Label ID="lblVolunteer" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Elder:</td>
            <td>
                <asp:DropDownList ID="ddlElders" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Remarks:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="127px" Width="633px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btnSend" runat="server" Text="Confirm" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
