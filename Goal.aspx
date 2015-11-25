<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Goal.aspx.cs" Inherits="Project_Goal" MasterPageFile="~/FourthMaster.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainServices" runat="server">
   
        <%-- Here you can see if you are on track to reach your weightloss goals. You can calculate how much you need to lose per day. 
            Also you can Find different Videos related to your exercise goals.  --%>       
    <div>  
       <h1 style="color: #990000; right: auto; left: auto; text-align: center">Goal Calculator:</h1>
        <hr />     
          <div>
              <br />
        <h3><asp:Label ID="Label1" runat="server" Text="How much weight do  you need to lose to meet your goal?"></asp:Label></h3>
          
        <asp:TextBox ID="WeightLoss1" runat="server">        
        </asp:TextBox>
        <asp:CompareValidator ID="WeightLoss1Num" runat="server" ErrorMessage="Please enter a number greater than zero." ControlToValidate="Weightloss1" Operator="DataTypeCheck" Type="integer" ForeColor="#CC0000"></asp:CompareValidator>        
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Weightloss1" ValueToCompare="0" Operator="GreaterThan" ErrorMessage="Please enter a number greater than 0." ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <h3><asp:Label ID="Label2" runat="server" Text="How soon do you want to lose the weight?"></asp:Label></h3>
  
        <asp:DropDownList ID="LoseDates" runat="server" OnSelectedIndexChanged="LoseDates_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Value="0">1 Month</asp:ListItem>
            <asp:ListItem Value="1">2 Months</asp:ListItem>
            <asp:ListItem Value="2">3 Months</asp:ListItem>
            <asp:ListItem Value="3">4 Months</asp:ListItem>
            <asp:ListItem Value="4">5 Months</asp:ListItem>
            <asp:ListItem Value="5">6 Months</asp:ListItem>
            <asp:ListItem Value="6">7 Months</asp:ListItem>
            <asp:ListItem Value="7">8 Months</asp:ListItem>
            <asp:ListItem Value="8">9 Months</asp:ListItem>
            <asp:ListItem Value="9">10 Months</asp:ListItem>
            <asp:ListItem Value="10">11 Months</asp:ListItem>
            <asp:ListItem Value="11">12 Months</asp:ListItem>
            <asp:ListItem Value="12">1 Week</asp:ListItem>
            <asp:ListItem Value="13">2 Weeks</asp:ListItem>
            <asp:ListItem Value="14">3 Weeks</asp:ListItem>
        </asp:DropDownList>
              <br />        
        <h3><asp:Label ID="Label5" runat="server" Text="You will need to lose "></asp:Label></h3> 
              
         <asp:TextBox ID="Result" runat="server" ReadOnly="true" OnTextChanged="Result_TextChanged">        
        </asp:TextBox>
        
          <asp:Label ID="Label4" runat="server" Text="a day to meet your goal."></asp:Label>
              
       
                      
        <br />
              <br />
              <h3><asp:Label ID="Label3" runat="server" Text="Are you on target to meet your goal?"></asp:Label></h3>
        <br />
        <a href="coaches.aspx">Get Some Help!</a>
              </div>

        
         </div>

</asp:Content>