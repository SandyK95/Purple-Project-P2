<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomePageMenu.ascx.cs" Inherits="P2.Menu" %>
<!-- A grey navbar that expands horizontally at medium device -->
            <nav class="navbar navbar-expand-md bg-light navbar-light">
                <!-- The brand (or icon) of the navbar -->
                <a class="navbar-brand" href="Main.aspx"
                    style="font-size: 32px; font-weight:bold; color:#3399FF;">
                    Purple Project
                </a>
                <!-- Toggle/collapsible Button, also known as hamburger button -->
                <button class="navbar-toggler" type="button"
                        data-toggle="collapse" data-target="#HomeNavbar">
                <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Links in the navbar, displayed as drop-down list whne collapsed -->
                <div class="collapse navbar-collapse" id="HomeNavbar">
                    <!-- Links that are aligned to the left,
                        mr-autoL right margin auto-adjuusted -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="../Home/Message.aspx">A</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../Home/ViewStudent.aspx">B</a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="../Home/ViewProjects.aspx">C</a>
                        </li>
                    </ul>
                    <!-- Links that are alighed to the right,
                        ml-auto: left margin auto-adjusted -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <!-- A Web Form Control button for logging out user -->
                           <a class="nav-link" href="../Login.aspx">Login</a>
                        </li>
                    </ul>
                </div>
            </nav>