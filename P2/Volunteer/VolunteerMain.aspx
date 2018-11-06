<%@ Page Title="" Language="C#" MasterPageFile="~/VolunteerTemplate.Master" AutoEventWireup="true" CodeBehind="VolunteerMain.aspx.cs" Inherits="P2.Volunteer.VolunteerMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Status :
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
    </p>
</asp:Content>
