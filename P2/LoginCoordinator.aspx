﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCoordinator.aspx.cs" Inherits="P2.LoginCoordinator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coordinator Login</title>

    <link href="css/login.css" rel="stylesheet" />
    <link href="css/StyleSheet2.css" rel="stylesheet" />
</head>


<body>
    <header>
        <div class="main">
            <div class="logo">
                <img src="../Images/Purple Project 4.png" />
            
            </div>
            <ul>
                <li class="active"><a href="HomeMainPage3.html"> HOME </a></li>
                <li><a href=""> ABOUT </a></li>
                <li><a href=""> CONTACT US </a></li>

            </ul>
        </div>
    
    <form class="box" action="#" runat="server">
         <h1> Coordinator Login </h1>
        <asp:TextBox ID="txtloginID" runat="server" CssClass="auto-style7" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style4" placeholder="Password" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" text="Login" OnClick="BtnLogin_Click" CssClass="auto-style4" />
        <asp:Label ID="lblMessage" runat="server"  CssClass="auto-style5"></asp:Label>
    </form>

        </header>
</body>
</html>