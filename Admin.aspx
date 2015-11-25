<%@ Page Title="" Language="C#" MasterPageFile="~/Second.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Admin Page: Add Product's Here!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" Runat="Server">
    
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Products] WHERE [Prod_ID] = @Prod_ID" 
        InsertCommand="INSERT INTO [Products] ([Prod_ID], [Prod_Name], [Prod_Brand], [Prod_Price], [Prod_Type], [Prod_Image], [Date_Added]) VALUES (@Prod_ID, @Prod_Name, @Prod_Brand, @Prod_Price, @Prod_Type, @Prod_Image, @Date_Added)" 
        SelectCommand="SELECT * FROM [Products] ORDER BY [Prod_Type]" 
        UpdateCommand="UPDATE [Products] SET [Prod_Name] = @Prod_Name, [Prod_Brand] = @Prod_Brand, [Prod_Price] = @Prod_Price, [Prod_Type] = @Prod_Type, [Prod_Image] = @Prod_Image, [Date_Added] = @Date_Added WHERE [Prod_ID] = @Prod_ID">
        <DeleteParameters>
            <asp:Parameter Name="Prod_ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Prod_Name" Type="String" />
            <asp:Parameter Name="Prod_Brand" Type="String" />
            <asp:Parameter Name="Prod_Price" Type="Decimal" />
            <asp:Parameter Name="Prod_Type" Type="String" />
            <asp:Parameter Name="Prod_Image" Type="String" />
            <asp:Parameter DbType="Date" Name="Date_Added" />
            <asp:Parameter Name="Prod_ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Prod_ID" Type="Int32" />
            <asp:Parameter Name="Prod_Name" Type="String" />
            <asp:Parameter Name="Prod_Brand" Type="String" />
            <asp:Parameter Name="Prod_Price" Type="Decimal" />
            <asp:Parameter Name="Prod_Type" Type="String" />
            <asp:Parameter Name="Prod_Image" Type="String" />
            <asp:Parameter DbType="Date" Name="Date_Added" />
        </InsertParameters>
    </asp:SqlDataSource>

    <div style="width: 231px; height: 50px; right: auto; left: auto; text-align: center; vertical-align: middle;">
        <br /><asp:LinkButton ID="btnAddProduct" runat="server" onclick="btnAddProduct_Click" Width="200px">Add a New Product</asp:LinkButton></div>
    <br />
    <br />

    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Prod_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Width="100%" 
        onselectedindexchanged="GridView2_SelectedIndexChanged" HorizontalAlign="Center">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Select" Text="Edit" Font-Size="XX-Small"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this item?')" Font-Size="XX-Small"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Prod_ID" HeaderText="Product ID" ReadOnly="True" 
                SortExpression="Prod_ID" />
            <asp:BoundField DataField="Prod_Name" HeaderText="Name" 
                SortExpression="Prod_Name" />
            <asp:BoundField DataField="Prod_Brand" HeaderText="Brand" 
                SortExpression="Prod_Brand" />
            <asp:BoundField DataField="Prod_Price" DataFormatString="{0:c}" 
                HeaderText="Price" SortExpression="Prod_Price" />
            <asp:BoundField DataField="Prod_Type" HeaderText="Type" 
                SortExpression="Prod_Type" />
            <asp:TemplateField HeaderText="Image" SortExpression="Prod_Image">
                <ItemTemplate>
                    <img src='ProductImages/<%# Eval("Prod_Image") %>' height="100px" alt="Product Image" />
                    
                </ItemTemplate>
               
            </asp:TemplateField>
            <asp:BoundField DataField="Date_Added" DataFormatString="{0:d}" 
                HeaderText="Date Added" SortExpression="Date_Added" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    CellPadding="4" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource2" 
    ForeColor="#333333" GridLines="None" Height="50px" Width="100%" 
        onitemupdated="DetailsView1_ItemUpdated" 
        onitemupdating="DetailsView1_ItemUpdating" 
        onitemcommand="DetailsView1_ItemCommand" 
        oniteminserted="DetailsView1_ItemInserted"
        oniteminserting="DetailsView1_ItemInserting" EnableViewState="False" HorizontalAlign="Center">
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <Fields>
        <asp:BoundField DataField="Prod_ID" HeaderText="Product ID" ReadOnly="True" 
            SortExpression="Prod_ID" />
        <asp:BoundField DataField="Prod_Name" HeaderText="Name" 
            SortExpression="Prod_Name" />
        <asp:BoundField DataField="Prod_Brand" HeaderText="Brand" 
            SortExpression="Prod_Brand" />
        <asp:TemplateField HeaderText="Price" SortExpression="Prod_Price">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Prod_Price", "{0:c}") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Prod_Price", "{0:f}") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" 
                    Text='<%# Bind("Prod_Price", "{0:c}") %>'></asp:TextBox>
            </InsertItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Prod_Type" HeaderText="Type" 
            SortExpression="Prod_Type" />
        <asp:TemplateField HeaderText="Product Image" SortExpression="Prod_Image">
            <ItemTemplate>
            <img src='ProductImages/<%# Eval("Prod_Image") %>' height="100px" alt="Product Image" />
               
            </ItemTemplate>
            <EditItemTemplate>
                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Prod_Image") %>' />
                  <asp:Label ID="Label1" runat="server" >Current Image: <%# Eval("Prod_Image") %></asp:Label> <br />
                <img src='ProductImages/<%# Eval("Prod_Image") %>' height="100px" alt="Product Image" />
             
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Label ID="lblUpload" runat="server" ></asp:Label>
            </EditItemTemplate>
            <InsertItemTemplate>
             <asp:FileUpload ID="FileUpload1" runat="server" />

                
            </InsertItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Date Added" SortExpression="Date_Added">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Date_Added", "{0:d}") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>

            <asp:TextBox ID="txtDate" runat="server" Text='<%# Bind("Date_Added", "{0:d}") %>'></asp:TextBox>
            
            

                
            </EditItemTemplate>
            <InsertItemTemplate>
            <asp:TextBox ID="txtDate" runat="server" Text='<%# Bind("Date_Added", "{0:d}") %>'></asp:TextBox>
            
            
                
            </InsertItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#999999" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [Products] WHERE [Prod_ID] = @Prod_ID" 
    InsertCommand="INSERT INTO [Products] ([Prod_ID], [Prod_Name], [Prod_Brand], [Prod_Price], [Prod_Type], [Prod_Image], [Date_Added]) VALUES (@Prod_ID, @Prod_Name, @Prod_Brand, @Prod_Price, @Prod_Type, @Prod_Image, @Date_Added)" 
    SelectCommand="SELECT * FROM [Products] WHERE ([Prod_ID] = @Prod_ID)" 
    UpdateCommand="UPDATE [Products] SET [Prod_Name] = @Prod_Name, [Prod_Brand] = @Prod_Brand, [Prod_Price] = @Prod_Price, [Prod_Type] = @Prod_Type, [Prod_Image] = @Prod_Image, [Date_Added] = @Date_Added WHERE [Prod_ID] = @Prod_ID">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" Name="Prod_ID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="Prod_ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Prod_Name" Type="String" />
            <asp:Parameter Name="Prod_Brand" Type="String" />
            <asp:Parameter Name="Prod_Price" Type="Decimal" />
            <asp:Parameter Name="Prod_Type" Type="String" />
            <asp:Parameter Name="Prod_Image" Type="String" />
            <asp:Parameter Name="Date_Added" Type="DateTime" />
            <asp:Parameter Name="Prod_ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Prod_ID" Type="Int32" />
            <asp:Parameter Name="Prod_Name" Type="String" />
            <asp:Parameter Name="Prod_Brand" Type="String" />
            <asp:Parameter Name="Prod_Price" Type="Decimal" />
            <asp:Parameter Name="Prod_Type" Type="String" />
            <asp:Parameter Name="Prod_Image" Type="String" />
            <asp:Parameter Name="Date_Added" Type="DateTime" />
        </InsertParameters>
</asp:SqlDataSource>

    <br />
    
</asp:Content>

