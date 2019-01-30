<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="VolunteerUpdate.aspx.cs" Inherits="P2.Admin.VolunteerUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
        }
    .auto-style4 {
        font-size: large;
        color: #FFFFFF;
    }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
            color: #000000;
        }
        .auto-style7 {
            font-size: x-large;
            color: #FFFFFF;
            width: 453px;
        }
        .auto-style8 {
            font-size: x-large;
            width: 453px;
        }
        .auto-style9 {
            font-size: large;
            color: #000000;
            width: 741px;
        }
        .auto-style10 {
            font-size: large;
            width: 453px;
        }
        .auto-style11 {
            color: #fff;
            width: 453px;
        }
        .auto-style12 {
            font-size: large;
            color: #000000;
            width: 453px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style4"><strong>Update with an existing Coordinator</strong></td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Name:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="lblName" runat="server" CssClass="auto-style6"></asp:Label>
            </td>
        </tr>
        <tr class="text-white">
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Coordinator Name:</strong></td>
            <td class="auto-style9">
                <asp:DropDownList ID="dd_Coordinator" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="text-white">
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btn_Submit" CssClass="btn btn-success" runat="server" OnClick="btn_Submit_Click" Text="Update" />
                <span class="text-white">&nbsp;
                </span>
                <asp:Button ID="btn_Back" CssClass="btn btn-secondary" runat="server" OnClick="btn_Back_Click" Text="Back" Width="81px" />
&nbsp;<span class="text-white"><br />
                <asp:Label ID="lblMessage" CssClass="label label-info" runat="server"></asp:Label>
                </span>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
