﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginVendor.aspx.cs" Inherits="P2.loginVendor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor Login</title>
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


    <form id="form1" runat="server" class="box">
      <%--  <div>
        </div>--%>
      <h1>Vendor Login</h1>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" placeholder="Username"></asp:TextBox>
          <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" placeholder="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass="auto-style4" />
        <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style5"></asp:Label>
    </form>

        </header>
</body>
</html>
