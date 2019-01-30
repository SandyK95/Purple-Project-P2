<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="ElderDetails.aspx.cs" Inherits="P2.Admin.ElderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 76px;
        }
        .auto-style4 {
            font-size: xx-large;
        color: #FFFFFF;
    }
        .auto-style5 {
        height: 76px;
        font-size: large;
        width: 177px;
        color: #FFFFFF;
    }
        .auto-style6 {
            height: 76px;
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style4"><strong>Edit Elder Record</strong></td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Elder ID</strong></td>
            <td>
                <asp:Label ID="lblId" runat="server" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Serial No</strong></td>
            <td>
                <asp:Label ID="lblSerialNo" runat="server" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Name:</strong></td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Address:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Contact</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Dietary</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtDietary" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Health Condition</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtHealth" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" CssClass="btn btn-primary" runat="server" OnClick="btnSave_Click" Text="Save" />
                &nbsp;<asp:Button ID="btnDelete" CssClass="btn btn-light" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                <br />
                <asp:Label ID="lblMessage" CssClass="label label-default" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
