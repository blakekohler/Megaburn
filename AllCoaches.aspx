<%@ Page Title="" Language="C#" MasterPageFile="~/Second.master" AutoEventWireup="true" CodeFile="AllCoaches.aspx.cs" Inherits="AllCoaches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    View All Our Coaches
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" Runat="Server">
    <h1 style="color: #990000; right: auto; left: auto; text-align: center">ALL REGISTERED COACHES:</h1>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Title], [Bio] FROM [Coaches]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
              <br />
            <br />
            <span style="text-transform: uppercase; color: #800000; margin-left:10px; font-size: large;"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></span>
            <span style="color: #003399; text-decoration: underline; margin-left:10px; text-transform: uppercase"><asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></span>
          
            <span style="padding: 5px"><asp:Label ID="BioLabel" runat="server" Text='<%# Eval("Bio") %>' /> </span> <hr />
            <br />
            <br />
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Bio:
            <asp:TextBox ID="BioTextBox" runat="server" Text='<%# Bind("Bio") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Bio:
            <asp:TextBox ID="BioTextBox" runat="server" Text='<%# Bind("Bio") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            <br />
            <span style="text-transform: uppercase; color: #800000; margin-left:10px; font-size: large;"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></span>
            <span style="color: #003399; text-decoration: underline; margin-left:10px; text-transform: uppercase"><asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></span>
          
            <span style="padding: 5px"><asp:Label ID="BioLabel" runat="server" Text='<%# Eval("Bio") %>' /> </span> <hr />
            <br />
            <br />
            
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <br />
            <br />
            <span style="text-transform: uppercase; color: #800000; padding:10px; font-size: large;"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></span>
            <span style="color: #003399; text-decoration: underline; padding:10px; text-transform: uppercase"><asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></span>
          
            <asp:Label ID="BioLabel" runat="server" Text='<%# Eval("Bio") %>' />  <hr />
            <br />
            <br />
            
        </SelectedItemTemplate>
    </asp:ListView>
    </asp:Content>

