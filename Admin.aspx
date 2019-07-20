<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ceng382LabProject.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li><a runat="server" href="/Admin.aspx">Home-Admin</a></li>
            <li><a runat="server" href="/listAllusers.aspx">List All Users</a></li>
            <li><a runat="server" href="/Leaderboard.aspx">Leaderboard</a></li>
            <li><a runat="server" href="/Questions.aspx">List Questions</a></li>
            <li><a runat="server" href="/AddQuestion.aspx">Add Question</a></li>
            <li>
                <asp:Label Style="color: white; font-size: 30px;" ID="LabelWelcome" runat="server" Text="" Visible="false"></asp:Label></li>
        </ul>


    </div>
</asp:Content>

