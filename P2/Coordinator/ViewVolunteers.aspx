<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorTemplate.Master" AutoEventWireup="true" CodeBehind="ViewVolunteers.aspx.cs" Inherits="P2.Coordinator.ViewVolunteers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gv_volunteer {
            width: 100%;
            word-wrap:break-word;
            table-layout:fixed;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="row">
        <div class ="col-sm-12">
            View Volunteer Details
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">

        </div>
    </div>
    <div class ="row">
        <div class="col-sm-12">

            <asp:GridView ID="gv_volunteer" runat="server" Height="100%" Width="100%">
            </asp:GridView>

        </div>
    </div>
</asp:Content>
