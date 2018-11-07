<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VendorMenu.ascx.cs" Inherits="P2.VendorMenu" %>
<!-- A grey navbar that expands horizontally at medium device -->
    <nav class="navbar navbar-expand-md bg-light navbar-light">
            <!-- The brand (or icon) of the navbar -->
            <a class="navbar-brand" href="VolunteerMain.aspx" style="font-size: 32px; font-weight:bold; color:#3399FF;">
                    Vendor Menu
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
                        <a class="nav-link" href="ViewElder.0.">LA</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="CreateStudent.aspx">A</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="CreateSkill.aspx">B</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="StudentImage.aspx">C</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewRequest.aspx">D</a>
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