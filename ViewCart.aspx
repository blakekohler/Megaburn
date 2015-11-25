<%@ Page Language="C#" MasterPageFile="~/Second.master" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="ViewCart" Title="View Cart" %>
<%@ Register TagPrefix="cc1" Namespace="GCheckout.Checkout" Assembly="GCheckout" %>


    <asp:Content ID="Content1" ContentplaceholderId="title" runat="server">
  MEGABURN: Shopping Cart
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="middle" Runat="Server">
   <div style="padding: 10px; text-transform: uppercase; font-weight: bold; color: #990000; text-align: center;">Shopping Cart</div><br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" GridLines="None" Width="100%" 
        CellPadding="4" AutoGenerateColumns="False" DataKeyNames="ID" 
        onrowcommand="GridView1_RowCommand" 
        onrowediting="GridView1_RowEditing" ShowFooter="True" 
        ondatabound="GridView1_DataBound" ForeColor="#333333">
    <HeaderStyle HorizontalAlign="Left" BackColor="#5D7B9D" ForeColor="#FFFFFF" 
            Font-Bold="True" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Product" />
            <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:c}" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                  
                  
                    <asp:TextBox ID="txtQuantity" runat="server" AutoPostBack="false" Text='<%# Bind("Quantity") %>' 
                        Width="41px"></asp:TextBox><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter A Number that is real." MaximumValue="999" MinimumValue="0" Text="Enter a Number that's real! " ControlToValidate="txtQuantity"></asp:RangeValidator>

                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:ButtonField CommandName="Edit" Text="Update Quantity" />
            
            <asp:TemplateField>
            
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnRemove" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
                </ItemTemplate>
                <FooterTemplate>
                Total: $<asp:Label ID="lblTotal" runat="server"></asp:Label>
                </FooterTemplate>
            
            </asp:TemplateField>
            
           
            
        </Columns>
        
        <EditRowStyle BackColor="#999999" />
        
    <FooterStyle HorizontalAlign="Right" BackColor="#5D7B9D" ForeColor="#FFFFFF" 
            Font-Bold="True" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />    
    <br /><br />
    <table style="width:100%">
    <tr>
    <td>
        <a href="store.aspx">Back to the Store</a>
    
    </td>
    <td style="text-align:right">
     <asp:LoginView
         ID="LoginView1" runat="server"  >
        <AnonymousTemplate>
            If you want to buy this stuff, please 
            <asp:LoginStatus ID="LoginStatus1" runat="server" /> or <a href="CreateUser.aspx">
                create an account</a>.
        </AnonymousTemplate>
        <LoggedInTemplate>
        
        <cc1:GCheckoutButton ID="GCheckoutButton1" runat="server" OnClick="GoogleCheckoutButton1_Click"  />
        </LoggedInTemplate>
     </asp:LoginView>
     <br />

        <asp:Label ID="lblStatus" runat="server" ></asp:Label>
    </td>
    
    </tr>
    
    </table>
    
    

    
     
</asp:Content>


