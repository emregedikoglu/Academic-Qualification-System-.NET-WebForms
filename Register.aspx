<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ceng382LabProject.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login">
            <h1>Register</h1>
            <asp:TextBox ID="usernameTxt" runat="server" placeholder="Username"></asp:TextBox><br />
            <asp:TextBox ID="emailTxt" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox><br />
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
            <asp:TextBox ID="favideTxt" runat="server" placeholder="Favourite ide"></asp:TextBox><br />
            <asp:TextBox ID="favplTxt" runat="server" placeholder="Favourite pl"></asp:TextBox><br />
            <asp:Button ID="registerBtn" runat="server" OnClick="ButtonRegister_Click" Text="Register"/>
        </div>
</asp:Content>
