<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="ceng382LabProject.Questions" %>

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

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>Questions</h3>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/ShowQuestion.aspx?id="+Eval("question_id") %>' Text='<%# Eval("question_title") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>   
    </div>
</asp:Content>

