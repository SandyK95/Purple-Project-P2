<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CoordinatorMenu.ascx.cs" Inherits="P2.CoordinatorMenu" %>
<!-- A grey navbar that expands horizontally at medium device -->
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
        .auto-style2 {
            color: #999999;
        }
        .auto-style3 {
            background-color: #D8BFD8;
        }
    </style>
    <nav class="auto-style3"background-color:#D8dfd8">
            <!-- The brand (or icon) of the navbar -->
            <span class="auto-style2">
            <a class="navbar-brand" href="CoordinatorMain.aspx" style="font-size: 32px; font-weight:bold; ">
                    Coordinator Menu</a></span><a class="navbar-brand" href="CoordinatorMain.aspx" style="font-size: 32px; font-weight:bold; color:gray;">
                    </a>
            <!-- Toggle/collapsible Button, also known as hamburger button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#AdminMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Links in the navbar, displayed as drop-down list whne collapsed -->
            <div class="collapse navbar-collapse" id="AdminMenu">
                <!-- Links that are aligned to the left, mr-autoL right margin auto-adjuusted -->
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="CoordinatorElder.aspx"><span class="auto-style1">View Delivery Status</span></a><span class="auto-style1"> </span>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewVolunteers.aspx"><span class="auto-style1">View Volunteer Details</span></a><span class="auto-style1"> </span>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ElderDetails.aspx"><span class="auto-style1">View Elder Details</span></a><span class="auto-style1"> </span>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Remarks.aspx"><span class="auto-style1">Remarks</span></a>
                    </li>
                </ul>
                <!-- Links that are alighed to the right, ml-auto: left margin auto-adjusted -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <!-- A Web Form Control button for logging out user -->
                        <asp:Button ID="btnLogout" runat="server" Text="Log Out" CssClass="btn btn-link nav-link" CausesValidation="False" OnClick="CoordLogout_Click" />

                    </li>
                </ul>
          </div>
    </nav>