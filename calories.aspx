<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/FourthMaster.master" CodeFile="calories.aspx.cs" Inherits="calories" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register src="CalroieTracker.ascx" tagname="CalroieTracker" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentplaceholderId="title" runat="server">


  Your Calories
    </asp:Content>
<asp:Content ID="header" ContentplaceholderId="MainServices" runat="server">
            
    <h3><asp:Label ID="Label1" runat="server" Text="How many minutes did you exercise?"></asp:Label></h3>
    <asp:TextBox ID="txtMinutes" runat="server"></asp:TextBox><br />
           <asp:CompareValidator ID="CompareValidator1" runat="server"  Display="Dynamic" ErrorMessage="Please enter a number greater than zero." ControlToValidate="txtMinutes" Operator="DataTypeCheck" Type="integer"></asp:CompareValidator>        
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  Display="Dynamic" ControlToValidate="txtMinutes" ValueToCompare="0" Operator="GreaterThan" ErrorMessage="Please enter a number greater than 0."></asp:RequiredFieldValidator>
        <br /><h3><asp:Label ID="Label2" runat="server" Text="What's your weight?"></asp:Label></h3>
    <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
      <asp:CompareValidator ID="WeightLoss1Num" runat="server" ErrorMessage="Please enter a number greater than zero." ControlToValidate="txtWeight" Operator="DataTypeCheck" Type="integer"></asp:CompareValidator>        
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate   ="txtWeight" ValueToCompare="0" Operator="GreaterThan" ErrorMessage="Please enter a number greater than 0."></asp:RequiredFieldValidator>
            <h3><asp:Label ID="Label3" runat="server" Text="What exercise did you do?"></asp:Label>   </h3>
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Activity" DataValueField="Calories"  Height="30px" Width="300px">
          </asp:DropDownList>    <br /><br />
          <h3> <asp:Label ID="Label4" runat="server" Text="Number of calories burned." ></asp:Label></h3>
        <asp:TextBox ID="txtResults" runat="server" readonly="true"></asp:TextBox>
    <br />
        <br />
        <h3> <asp:Label ID="Label5" runat="server" Text="Add your results to the workout log!" ></asp:Label></h3>
        <br/>      
        <%-- This is where the results of weight * time * calories burned per minute/100=Calories burned is calculated.  --%> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MealPlansConnectionString %>" SelectCommand="SELECT [Activity], [Calories] FROM [Calories]">
        </asp:SqlDataSource>
        
        <uc1:CalroieTracker ID="CalroieTracker1" runat="server" />
        
        <br />
        <br />
        <br />
        <br />
    
    
    </asp:Content>