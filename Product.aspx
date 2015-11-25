<%@ Page Language="C#"  MasterPageFile="~/Second.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentplaceholderId="title" runat="server">
  MEGABURN: Products
    </asp:Content>
    

<asp:Content ID="Content3" ContentPlaceHolderID="middle" Runat="Server">
   <div> <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource1" 
         onitemcommand="FormView2_ItemCommand" >
        <ItemTemplate>
            
            <br />
            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Prod_ID") %>' />
            
            <img src='ProductImages/<%# Eval("Prod_Image") %>' align="left" alt="" 
                style="margin: 5px; border: thin solid #800000; />
                
           <h1> <asp:Label ID="Prod_NameLabel" runat="server" 
                Text='<%# Bind("Prod_Name") %>' /></h1>
            
            
               <br /> Brand: <asp:Label ID="Prod_BrandLabel" runat="server" 
                Text='<%# Bind("Prod_Brand") %>' Font-Names="Arial Narrow" />
            <br />
            
            Price: <asp:Label ID="Prod_PriceLabel" runat="server" 
                Text= '<%# Bind("Prod_Price", "{0:F2}") %>' Font-Names="Arial Narrow" 
                    ForeColor="#006600" />
            <br />
           <div style="padding: 15px">
            <%# Eval("Prod_LongDesc") %>
               </div> <br/>
               
            <h2 align="center" style="font-family: Arial, Helvetica, sans-serif">
                <asp:Button ID="addToCartButton" runat="server"  Text="Add to Cart" />
            </h2>
               
        </ItemTemplate>
       
    </asp:FormView>
    <br /><div style="margin-left: 25px;"><a href="Store.aspx">Back to Store</a></div><br /><br /><br />
       <!--This establishes the connection string, queries the data base for the item matching the id passed from the last page and displays results in the previous form. -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Prod_ID], [Prod_Name], [Prod_Brand], [Prod_Price], [Prod_LongDesc], [Prod_Image] FROM [Products] WHERE ([Prod_ID] = @Prod_ID)">
    <SelectParameters>
            <asp:QueryStringParameter Name="Prod_ID" QueryStringField="Prod_ID" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource></div>
</asp:Content>

