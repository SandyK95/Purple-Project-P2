<%@ Page Title="" Language="C#" MasterPageFile="~/VolunteerTemplate.Master" AutoEventWireup="true" CodeBehind="UpdateStatus.aspx.cs" Inherits="P2.Volunteer.UpdateStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 39px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style9 {
            height: 39px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style10 {
            font-size: large;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8"><strong><em>Change Elder&#39;s Distribution Status</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong><em>Elder Name:</em></strong></td>
            <td>
                <strong>
                <asp:Label ID="lblElderName" runat="server" CssClass="text-white"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong><em>Serial No:</em></strong></td>
            <td>
                <strong>
                <asp:Label ID="lblElderID" runat="server" CssClass="text-white"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong><em>Address:</em></strong></td>
            <td>
                <strong>
                <asp:Label ID="lblAddress" runat="server" CssClass="text-white"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong><em>Meal:</em></strong></td>
            <td>
                <strong>
                <asp:Label ID="lblMeal" runat="server" CssClass="text-white"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong><em>Status:</em></strong></td>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;
                <strong>
                <asp:RadioButtonList ID="rblSuccess" runat="server" Width="195px" CssClass="text-white">
                    <asp:ListItem>Delivered</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>Not Delivered</asp:ListItem>
                </asp:RadioButtonList>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtFeedback" runat="server" Height="150px" Visible="False" Width="444px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnSave" CssClass="btn btn-primary" runat="server" OnClick="btnSave_Click" Text="Save" Height="58px" Width="96px"/>
                &nbsp;<asp:Button ID="btnBack" CssClass="btn btn-light" runat="server" OnClick="btnBack_Click" Text="Back" Height="61px" Width="113px"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblChanges" runat="server" CssClass="label label-info" style="color: #FFFFFF"></asp:Label>
                <br />
                <asp:Label ID="lblFeedback" runat="server" CssClass="label label-info" style="color: #FFFFFF"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
