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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5"><strong>Change Elder&#39;s Distribution Status</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Elder Name:</strong></td>
            <td>
                <asp:Label ID="lblElderName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Serial No:</strong></td>
            <td>
                <asp:Label ID="lblElderID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Address:</strong></td>
            <td>
                <asp:Label ID="lblAddress" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Meal:</strong></td>
            <td>
                <asp:Label ID="lblMeal" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Status:</strong></td>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="rblSuccess" runat="server" Width="195px">
                    <asp:ListItem>Delivered</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>Not Delivered</asp:ListItem>
                </asp:RadioButtonList>
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
                <asp:Button ID="btnSave" CssClass="btn btn-primary" runat="server" OnClick="btnSave_Click" Text="Save"/>
                &nbsp;<asp:Button ID="btnBack" CssClass="btn btn-light" runat="server" OnClick="btnBack_Click" Text="Back"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblChanges" runat="server" CssClass="label label-info"></asp:Label>
                <br />
                <asp:Label ID="lblFeedback" runat="server" CssClass="label label-info"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
