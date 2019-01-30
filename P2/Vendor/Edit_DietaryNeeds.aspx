<%@ Page Title="" Language="C#" MasterPageFile="~/VendorTemplate.Master" AutoEventWireup="true" CodeBehind="Edit_DietaryNeeds.aspx.cs" Inherits="P2.Vendor.Edit_DietaryNeeds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 217px;
        }
        .auto-style4 {
            width: 217px;
            height: 13px;
        }
        .auto-style5 {
            height: 13px;
        }
        .auto-style6 {
            width: 217px;
            height: 47px;
        }
        .auto-style7 {
            height: 47px;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style8 {
            width: 217px;
            height: 54px;
        }
        .auto-style9 {
            height: 54px;
        }
        .auto-style10 {
            width: 949px;
        }
        .auto-style11 {
        width: 217px;
        height: 54px;
        color: #FFFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"><strong>Edit/Receipt Dierary Needs</strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><span class="text-white">Name:</td>
            <td class="auto-style9">
                <asp:Label ID="lblName" runat="server" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">SerialNo:</td>
            <td class="auto-style9">
                <asp:Label ID="lblSerialNo" runat="server" CssClass="text-white"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Preparation Status:</span></td>
            <td class="auto-style9">
                <asp:DropDownList ID="dd_Prepare" runat="server" OnSelectedIndexChanged="dd_Prepare_SelectedIndexChanged">
                    <asp:ListItem>Completed</asp:ListItem>
                    <asp:ListItem>Still Progressing</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><span class="text-white"></td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Meal Status</td>
            <td class="auto-style9">
                <asp:RadioButtonList ID="rblMeal" runat="server">
                    <asp:ListItem>Lunch</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Timing:</span></td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddlTiming" runat="server" Width="250px">
                    <asp:ListItem Selected="True" Value="12:00 - 13:00">12:00PM - 13:00PM</asp:ListItem>
                    <asp:ListItem Value="18:00 - 19:00">18:00PM - 19:00PM</asp:ListItem>
                </asp:DropDownList>
                <span class="text-white">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                </span></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btn_Submit" CssClass="btn btn-success" runat="server" OnClick="btn_Submit_Click" Text="Update" /> 
                &nbsp;<asp:Button ID="btn_Back" CssClass="btn btn-secondary" runat="server" OnClick="btn_Back_Click" Text="Back" />
                <span class="text-white">
                <br />
                <br />
                <asp:Label ID="lblMessage" CssClass="label label-info" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblMealTiming" CssClass="label label-success" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td></span></td>
        </tr>
    </table>
</asp:Content>
