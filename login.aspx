<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" MasterPageFile="~/Second.master" Inherits="login" %>
<asp:Content ID="Content1" ContentplaceholderId="title" runat="server">
  Please Log In
    </asp:Content>
<asp:Content ID="header" ContentplaceholderId="middle" runat="server">
  
   
   <div style="display: block; margin: 20px auto 20px auto; padding: 20px; vertical-align: top;"> <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login></div>

  
    </asp:Content>
