<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorTemplate.Master" AutoEventWireup="true" CodeBehind="ElderUpdate.aspx.cs" Inherits="P2.Coordinator.ElderUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style7 {
            position: relative;
            width: 28%;
            min-height: 1px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            color: #FFFFFF;
            padding-left: 15px;
            padding-right: 15px;
            left: 0px;
            top: 0px;
        }
        .auto-style9 {
            font-size: large;
            width: 99%;
        }
        .auto-style10 {
            font-size: large;
            width: 28%;
            background-color: #D8BFD8;
        }
        .auto-style11 {
            width: 28%
        }
        .auto-style12 {
            width: 28%;
            color: #FFFFFF;
        }
        .auto-style13 {
            font-size: large;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style13"><strong>Update with an existing Volunteer</strong></td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Name:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="lblName" runat="server" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>SerialNo:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="lblSerialNo" runat="server" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Volunteer Name:</strong></td>
            <td class="auto-style9">
                <asp:DropDownList ID="dd_Volunteer" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btn_Submit" CssClass="btn btn-success" runat="server" OnClick="btn_Submit_Click" Text="Update" />
&nbsp;
                <asp:Button ID="btn_Back" CssClass="btn btn-secondary" runat="server" OnClick="btn_Back_Click" Text="Back" />
&nbsp;<br />
                <br />
                <asp:Label ID="lblMessage" CssClass="label label-info" runat="server" style="color: #FFFFFF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
