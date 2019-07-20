<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="ceng382LabProject.AddQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="/Admin.aspx">Home-Admin</a></li>
                        <li><a runat="server" href="/listAllusers.aspx">List All Users</a></li>
                        <li><a runat="server" href="/Leaderboard.aspx">Leaderboard</a></li>
                        <li><a runat="server" href="/Questions.aspx">List Questions</a></li>
                        <li><a runat="server" href="/AddQuestion.aspx">Add Question</a></li>
                        <li><asp:Label style="color:white;font-size:30px;" ID="LabelWelcome" runat="server" Text="" Visible="false"></asp:Label></li>

                    </ul>
                </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>Add Question</h3>
        <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
    
    </div>
        <p>
            <asp:TextBox ID="TextBoxTitle" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Question Text"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBoxQuestionText" runat="server" Height="116px" Width="309px" OnTextChanged="TextBoxQuestionText_TextChanged"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Asnwer"></asp:Label>
        <p>
            <asp:TextBox ID="TextBoxQuestionAnswer" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Add" OnClientClick="return confirm('Adding the question?')" OnClick="Button1_Click"/>
</asp:Content>