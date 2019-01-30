<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CoordinatorMenu.ascx.cs" Inherits="P2.CoordinatorMenu" %>
<!-- A grey navbar that expands horizontally at medium device -->
    <style type="text/css">
    .auto-style1 {
        color: #666666;
    }
        </style>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#D8bfd8">
            <!-- The brand (or icon) of the navbar -->
            <span class="auto-style1">
            <a class="navbar-brand" href="CoordinatorMain.aspx" style="font-size: 32px; font-weight:bold; ">
                    Coordinator
            </a></span><a class="navbar-brand" href="CoordinatorMain.aspx" style="font-size: 32px; font-weight:bold; color:gray;">
                    </a>
            <!-- Toggle/collapsible Button, also known as hamburger button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#CoordinatorMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Links in the navbar, displayed as drop-down list whne collapsed -->
            <div class="collapse navbar-collapse" id="AdminMenu">
                <!-- Links that are aligned to the left, mr-autoL right margin auto-adjuusted -->
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" style="color:white" href="CoordinatorElder.aspx"<strong>View Delivery </strong></a><strong></strong>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:white" href="ViewVolunteers.aspx"><strong>View Volunteer </strong></a><strong></strong>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:white" href="ElderDetails.aspx"><strong>View Elder </strong></a><strong></strong>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:white" href="Remarks.aspx"><strong>Remarks</strong></a><strong></strong>
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