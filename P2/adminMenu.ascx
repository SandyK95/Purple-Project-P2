<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="adminMenu.ascx.cs" Inherits="P2.admin" %>
<style type="text/css">
    .auto-style1 {
        color: #666666;
    }
</style>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#D8bfd8">
            <!-- The brand (or icon) of the navbar -->
            <span class="auto-style1">
            <a class="navbar-brand" href="AdminMain.aspx" style="font-size: 32px; font-weight:bold; ">
                Administrator
            </a></span><a class="navbar-brand" href="AdminMain.aspx" style="font-size: 32px; font-weight:bold; color:blueviolet;">
                    </a>
            <!-- Toggle/collapsible Button, also known as hamburger button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#AdminMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Links in the navbar, displayed as drop-down list whne collapsed -->
            <div class="collapse navbar-collapse" id="VolunteerMenu">
                <!-- Links that are aligned to the left, mr-autoL right margin auto-adjuusted -->
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" style="color:white" href="ViewCoordinatorVendors.aspx"><strong>View Coordinators & Vendors</strong></a><strong> </strong>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:white" href="VolunteerDetails.aspx"><strong>Update the Volunteers</strong></a><strong> </strong>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:white" href="ViewElderDetails.aspx"><strong>View the Elders Details</strong></a>
                    </li>
                </ul>
                <!-- Links that are alighed to the right, ml-auto: left margin auto-adjusted -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <!-- A Web Form Control button for logging out user -->
                        <asp:Button ID="btn_LogOut" runat="server" Text="Log Out" CssClass="btn btn-link nav-link" CausesValidation="False" OnClick="btn_LogOut_Click" />

                    </li>
                </ul>
          </div>
    </nav>