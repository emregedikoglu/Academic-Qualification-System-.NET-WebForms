<%@ Page Title="" Language="C#"MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ceng382LabProject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="/Home.aspx">Home</a></li>
                        <li><a runat="server" href="/listAllusers.aspx">List All Users</a></li>
                        <li><a runat="server" href="/Leaderboard.aspx">Leaderboard</a></li>
                        <li><a runat="server" href="/Questions.aspx">List Questions</a></li>
                        <li><asp:Label style="color:white;font-size:30px;" ID="LabelWelcome" runat="server" Text="" Visible="false"></asp:Label></li>
                    </ul>
                </div>
</asp:Content>

