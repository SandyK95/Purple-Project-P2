<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="P2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
   <%-- --<style type="text/css">
        
        .auto-style1 {
            height: 45px;
            text-align: center;
            width: 1124px;
        }
        .auto-style2 {
            width: 1124px;
            height: 250px;
            text-align: center;
        }
        .auto-style3 {
            font-family: "Sitka Banner";
        }
        .auto-style4 {
            font-family: "Sitka Banner";
            font-size: x-large;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 335px;
            height: 146px;
        }
        .auto-style7 {
            font-family: "Sitka Banner";
            font-size: x-large;
            background-color: #CCCCFF;
        }
    </style>----%>
     <link href="css/login.css" rel="stylesheet" />
</head>
<body>
   <%-- <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
    <div>
        <table style="border: 0px solid #000000; margin: auto; width: auto">
            <tr>
                <td class="auto-style2"><span class="auto-style3"><span class="auto-style5">
                    <img alt="" class="auto-style6" src="Images/logo.png" /><br />
                    Login ID:</span><br class="auto-style5" />
                    </span>
                    <asp:TextBox ID="txtLoginID" runat="server" BackColor="#F5F5F5" TextMode="Email" ToolTip="e-mail address" BorderStyle="None" CssClass="auto-style7" style="border: 1px solid #000000"></asp:TextBox>
                    <br class="auto-style4" />
                    <span class="auto-style3"><span class="auto-style5">Password:</span><br class="auto-style5" />
                    </span>
                    <asp:TextBox ID="txtPassword"  style="border: 1px solid #000000" runat="server" TextMode="Password" BackColor="#F5F5F5" BorderStyle="None" CssClass="auto-style4"></asp:TextBox>
                    <span class="auto-style3">
                    <br class="auto-style5" />
                    <br class="auto-style5" />
                    </span>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#66CCFF" Font-Bold="True" ForeColor="White" Height="46px" Width="109px" OnClick="BtnLogin_Click" BorderColor="White" BorderWidth="1px" CssClass="auto-style4" />
&nbsp;<asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="auto-style4"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                    
                    <br />
                  </td>
            </tr>
        </table>
    </div>
    </form>--%>

    <form class="box" action="#" method="post" runat="server" >
        <h1> Admin Login </h1>

        <asp:TextBox ID="txtLoginID" runat="server"   CssClass="auto-style7" placeholder="Username"></asp:TextBox>
         <asp:TextBox ID="txtPassword"   runat="server" TextMode="Password"  CssClass="auto-style4" placeholder="Password"></asp:TextBox>
    
         <asp:Button ID="btnLogin" runat="server" Text="Login"   OnClick="BtnLogin_Click"  CssClass="auto-style4" />
&nbsp;
        <asp:Label ID="lblMessage" runat="server"  CssClass="auto-style5" type="submit"></asp:Label>

    </form>
</body>
</html>
