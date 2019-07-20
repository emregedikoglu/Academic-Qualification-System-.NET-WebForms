<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Leaderboard.aspx.cs" Inherits="ceng382LabProject.Leaderboard" %>

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
            <h3>Leaderboard</h3>
            <asp:GridView ID="LeaderboardGridView"
                AutoGenerateColumns="False"
                runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="LeaderboardGridView_SelectedIndexChanged" Width="225px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxId" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" Text='<%#Eval("user_id")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                            
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Username">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" Text='<%#Eval("username")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                            
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Point">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxPoint" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" Text='<%#Eval("point")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                            
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
</asp:Content>
