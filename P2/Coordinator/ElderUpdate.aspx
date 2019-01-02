<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorTemplate.Master" AutoEventWireup="true" CodeBehind="ElderUpdate.aspx.cs" Inherits="P2.Coordinator.ElderUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">Update with an existing Volunteer</td>
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
            <td class="auto-style8">Volunteer Name:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="dd_Volunteer" runat="server">
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
