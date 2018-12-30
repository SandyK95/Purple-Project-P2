<%@ Page Title="" Language="C#" MasterPageFile="~/VendorTemplate.Master" AutoEventWireup="true" CodeBehind="Edit_DietaryNeeds.aspx.cs" Inherits="P2.Vendor.Edit_DietaryNeeds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 219px;
        }
        .auto-style4 {
            width: 219px;
            height: 13px;
        }
        .auto-style5 {
            height: 13px;
        }
        .auto-style6 {
            width: 219px;
            height: 47px;
        }
        .auto-style7 {
            height: 47px;
        }
        .auto-style8 {
            width: 219px;
            height: 54px;
        }
        .auto-style9 {
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">Edit Dierary Needs</td>
        </tr>
        <tr>
            <td class="auto-style8">Name:</td>
            <td class="auto-style9">
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">SerialNo:</td>
            <td class="auto-style9">
                <asp:Label ID="lblSerialNo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Preparation Status:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="dd_Prepare" runat="server">
                    <asp:ListItem>Completed</asp:ListItem>
                    <asp:ListItem>Still Progressing</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btn_Submit" runat="server" OnClick="btn_Submit_Click" Text="Update" />
&nbsp;
                <asp:Button ID="btn_Back" runat="server" OnClick="btn_Back_Click" Text="Back" />
&nbsp;<br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
