<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VolunteerMenu.ascx.cs" Inherits="P2.VolunteerMenu" %>
<!-- A grey navbar that expands horizontally at medium device -->
    <style type="text/css">
        .auto-style1 {
            color: black;
        }
    </style>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#D8bfd8">
            <!-- The brand (or icon) of the navbar -->
            <a class="auto-style1" href="VolunteerMain.aspx" style="font-size: 32px; font-weight:bold; ">
                    Volunteer 
                </a>
            <!-- Toggle/collapsible Button, also known as hamburger button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#VolunteerMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Links in the navbar, displayed as drop-down list whne collapsed -->
            <div class="collapse navbar-collapse" id="VolunteerMenu">
                <!-- Links that are aligned to the left, mr-autoL right margin auto-adjuusted -->
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="ViewElder.aspx">View Elder Contact Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Remark_Volunteer.aspx">Remarks to Volunteer</a>
                    </li>
                </ul>
                <!-- Links that are alighed to the right, ml-auto: left margin auto-adjusted -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <!-- A Web Form Control button for logging out user -->
                        <asp:Button ID="btnLogout" runat="server" Text="Log Out" CssClass="btn btn-link nav-link" CausesValidation="False" OnClick="btnLogout_Click" />

                    </li>
                </ul>
          </div>
    </nav>