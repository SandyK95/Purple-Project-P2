<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginVolunteer.aspx.cs" Inherits="P2.loginVolunteer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Volunteer</title>

    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <form  runat="server" class="box" action="#">
        <%--<div>
        </div>--%>

        <asp:TextBox ID="txtloginID" runat="server" CssClass="auto-style7" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style4" placeholder="Password"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" text="Login" OnClick="BtnLogin_Click" CssClass="auto-style4"/>
        <asp:Label ID="lblMessage" runat="server" CssClass="auto-style5"></asp:Label>
    </form>
</body>
</html>
