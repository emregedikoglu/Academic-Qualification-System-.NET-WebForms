<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ceng382LabProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login Page</h1>
        <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox><br />
        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
        <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" />
</asp:Content>



