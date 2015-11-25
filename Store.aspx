<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Second.master" CodeFile="Store.aspx.cs" Inherits="Store" %>
<asp:Content ID="Content1" ContentplaceholderId="title" runat="server">
  MEGABURN: MEGA-STORE
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" Runat="Server">
     
        <div style="width: 900px; margin-right: auto; margin-left: auto">
           <div class="center_title_bar">
    <img src="images/storelogo.png"  />
    </div><br />
    <br /><!--Databound Product Info -->
<asp:DataList ID="list" Runat="server"
    EnableViewState="False"
        DataSourceID="SqlDataSource1" RepeatColumns="4" Width="597px">
       
  <ItemTemplate>
    <table cellPadding="0" align="center">
      <tr height="105">
        <td align="center" width="110">
          <a href='Product.aspx?Prod_ID=<%# Eval("Prod_ID")%>'>
            <img width="100"  src='ProductImages/<%# Eval("Prod_Image") %>' border="0" style="margin: 5px; padding: 0px; border: thin solid #CC0000;" />
          </a>
        </td>
        <td vAlign="top" width="100">
          <a class="ProductName" href='Product.aspx?Prod_ID=<%# Eval("Prod_ID")%>'>
            <%# Eval("Prod_Brand") %>
          </a>
          <br/>
            <!--Databound Product Info -->
          <span class="ProductDescription">
            <%# Eval("Prod_Name") %>
            <br/><br />
              
           
            Price: 
          </span>
          <span class="ProductPrice">
            <%# Eval("Prod_Price", "{0:c}") %>
          </span>
          <br />
        </td>
      </tr>
    </table>
  </ItemTemplate>
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Products]">
    </asp:SqlDataSource> </div>
   
</asp:Content>