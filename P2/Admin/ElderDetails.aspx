<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ElderDetails.aspx.cs" Inherits="P2.Admin.ElderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table class="w-100">
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td><strong>Edit Record</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">ElderID</td>
            <td>
                <asp:Label ID="lblId" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">SerialNo</td>
            <td>
                <asp:Label ID="lblSerialNo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Address:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Contact</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Dietary</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtDietary" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Health Condition</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtHealth" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
