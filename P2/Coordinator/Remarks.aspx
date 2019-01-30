<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorTemplate.Master" AutoEventWireup="true" CodeBehind="Remarks.aspx.cs" Inherits="P2.Coordinator.Remarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 40px;
        }
        .auto-style4 {
            
        }
        .auto-style7 {
            font-size: x-large;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7"><strong><em>Create Remarks</em></strong></td>
        </tr>
        <tr>
            <td class="text-white"><strong>From:&nbsp;</strong></td>
            <td>
                <asp:Label ID="lblCoordinatorEmail" runat="server" CssClass="text-white"></asp:Label>
                
                <asp:Label ID="lblCoordinatorName" runat="server" CssClass="text-white"></asp:Label>
            &nbsp;<asp:Label ID="lblCoordinatorID" runat="server" Visible="False" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong></strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-white"><strong>Elder:</strong></td>
            <td>
                <asp:DropDownList ID="ddlElders" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><strong></strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-white"><strong>Remarks:</strong></td>
            <td>
                <asp:TextBox ID="txtBox" runat="server" Height="127px" Width="633px"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btnSend" CssClass="btn btn-success" runat="server" Text="Confirm" OnClick="btnSend_Click" />
                <br />
            </td>
        </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblError" CssClass="label label-info" runat="server" style="color: #FFFFFF"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
