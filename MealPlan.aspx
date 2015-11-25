<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MealPlan.aspx.cs" Inherits="Project_MealPlan"  MasterPageFile="~/FourthMaster.master"%>

<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server">Meal Plan</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainServices" runat="server">
       
    <div>
        <%-- on this page you can add, delete, and edit receipes, or you can choose any receip you'd like based on calories.  --%>
        <asp:Label ID="Label1" runat="server" Text="Meal Suggestions"></asp:Label>
        <br />
        <asp:Label ID="Label28" runat="server" Text="Choose a meal according to calorie count"></asp:Label>
        <br />
        <%-- The user can choose receipes betweeon 100- 300 calories etc.  --%>
        <asp:DropDownList ID="DdlMeal" runat="server" AutoPostBack="true">
            <asp:ListItem Value="1">Recipes between 100 - 300 Calories</asp:ListItem>
            <asp:ListItem Value="2">Recipes between 300  - 500 Calories</asp:ListItem>
            <asp:ListItem Value="3">Recipes 500 Calories and above</asp:ListItem>
        </asp:DropDownList>
        <div style="overflow-x:auto;width:800px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MealPlansConnectionString %>" SelectCommand="SELECT * FROM [Recipes]
where
        @ddlMeal=1 and calories between 100 and 300
        or
        @ddlMeal=2 and calories between 300 and 500
        or
      @ddlMeal=3 and calories &gt; 500
" DeleteCommand="DELETE FROM [Recipes] WHERE [Hmy] = @Hmy" InsertCommand="INSERT INTO
 [Recipes]
 ([Calories], [Protein], [Fats], [Carbs], [Ingerdient1], [Ingredient2], [Ingredient3], [Ingredient5], [ingredient6], [Ingredient7], [Ingredient8], [Ingredient9], [Ingredient10], [Ingredient11], [ingredient12], [ingredient13], [ingredient14], [Ingredient15], [Ingredient16], [Ingredient17],  [CookingInsturctions], [RecipeName], [MealType], [ServingSuggestions]) 
VALUES
 (@Calories, @Protein, @Fats, @Carbs, @Ingerdient1, @Ingredient2, @Ingredient3, @Ingredient5, @ingredient6, @Ingredient7, @Ingredient8, @Ingredient9, @Ingredient10, @Ingredient11, @ingredient12, @ingredient13, @ingredient14, @Ingredient15, @Ingredient16, @Ingredient17,  @CookingInsturctions, @RecipeName, @MealType, @ServingSuggestions)" UpdateCommand="UPDATE [Recipes] SET [Calories] = @Calories, [Protein] = @Protein, [Fats] = @Fats, [Carbs] = @Carbs, [Ingerdient1] = @Ingerdient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient5] = @Ingredient5, [ingredient6] = @ingredient6, [Ingredient7] = @Ingredient7, [Ingredient8] = @Ingredient8, [Ingredient9] = @Ingredient9, [Ingredient10] = @Ingredient10, [Ingredient11] = @Ingredient11, [ingredient12] = @ingredient12, [ingredient13] = @ingredient13, [ingredient14] = @ingredient14, [Ingredient15] = @Ingredient15, [Ingredient16] = @Ingredient16, [Ingredient17] = @Ingredient17, [Ingredient18] = @Ingredient18, [Ingredient19] = @Ingredient19, [Ingredient20] = @Ingredient20, [CookingInsturctions] = @CookingInsturctions, [RecipeName] = @RecipeName, [MealType] = @MealType, [ServingSuggestions] = @ServingSuggestions WHERE [Hmy] = @Hmy">
            <DeleteParameters>
                <asp:Parameter Name="Hmy" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Calories" Type="String" />
                <asp:Parameter Name="Protein" Type="String" />
                <asp:Parameter Name="Fats" Type="String" />
                <asp:Parameter Name="Carbs" Type="String" />
                <asp:Parameter Name="Ingerdient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="ingredient6" Type="String" />
                <asp:Parameter Name="Ingredient7" Type="String" />
                <asp:Parameter Name="Ingredient8" Type="String" />
                <asp:Parameter Name="Ingredient9" Type="String" />
                <asp:Parameter Name="Ingredient10" Type="String" />
                <asp:Parameter Name="Ingredient11" Type="String" />
                <asp:Parameter Name="ingredient12" Type="String" />
                <asp:Parameter Name="ingredient13" Type="String" />
                <asp:Parameter Name="ingredient14" Type="String" />
                <asp:Parameter Name="Ingredient15" Type="String" />
                <asp:Parameter Name="Ingredient16" Type="String" />
                <asp:Parameter Name="Ingredient17" Type="String" />
                <asp:Parameter Name="CookingInsturctions" Type="String" />
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="MealType" Type="Int32" />
                <asp:Parameter Name="ServingSuggestions" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DdlMeal" DefaultValue="1" Name="ddlMeal" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Calories" Type="String" />
                <asp:Parameter Name="Protein" Type="String" />
                <asp:Parameter Name="Fats" Type="String" />
                <asp:Parameter Name="Carbs" Type="String" />
                <asp:Parameter Name="Ingerdient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="ingredient6" Type="String" />
                <asp:Parameter Name="Ingredient7" Type="String" />
                <asp:Parameter Name="Ingredient8" Type="String" />
                <asp:Parameter Name="Ingredient9" Type="String" />
                <asp:Parameter Name="Ingredient10" Type="String" />
                <asp:Parameter Name="Ingredient11" Type="String" />
                <asp:Parameter Name="ingredient12" Type="String" />
                <asp:Parameter Name="ingredient13" Type="String" />
                <asp:Parameter Name="ingredient14" Type="String" />
                <asp:Parameter Name="Ingredient15" Type="String" />
                <asp:Parameter Name="Ingredient16" Type="String" />
                <asp:Parameter Name="Ingredient17" Type="String" />
                <asp:Parameter Name="Ingredient18" Type="String" />
                <asp:Parameter Name="Ingredient19" Type="String" />
                <asp:Parameter Name="Ingredient20" Type="String" />
                <asp:Parameter Name="CookingInsturctions" Type="String" />
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="MealType" Type="Int32" />
                <asp:Parameter Name="ServingSuggestions" Type="String" />
                <asp:Parameter Name="Hmy" Type="Int32" />
            </UpdateParameters>
            
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Hmy" DataSourceID="SqlDataSource1" AllowSorting="True" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>    
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="Calories" SortExpression="Calories">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Calories") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Calories") %> ' Width="100px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Protein" SortExpression="Protein">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Protein") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Protein") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fats" SortExpression="Fats">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Fats") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Fats") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Carbs" SortExpression="Carbs">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Carbs") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Carbs") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 1 " SortExpression="Ingerdient1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Ingerdient1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Ingerdient1") %>' Width="200px" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 2" SortExpression="Ingredient2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Ingredient2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Ingredient2") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 3" SortExpression="Ingredient3">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Ingredient3") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Ingredient3") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 4" SortExpression="Ingredient5">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Ingredient5") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Ingredient5") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 5" SortExpression="ingredient6">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ingredient6") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("ingredient6") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 6" SortExpression="Ingredient7">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Ingredient7") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("Ingredient7") %>' width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 7" SortExpression="Ingredient8">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Ingredient8") %>' ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("Ingredient8") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 8" SortExpression="Ingredient9">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Ingredient9") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Bind("Ingredient9") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 9" SortExpression="Ingredient10">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Ingredient10") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Bind("Ingredient10") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 10" SortExpression="Ingredient11">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("Ingredient11") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%# Bind("Ingredient11") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 11" SortExpression="ingredient12">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("ingredient12") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label16" runat="server" Text='<%# Bind("ingredient12") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 12" SortExpression="ingredient13">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("ingredient13") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%# Bind("ingredient13") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 13" SortExpression="ingredient14">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("ingredient14") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label18" runat="server" Text='<%# Bind("ingredient14") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 14" SortExpression="Ingredient15">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("Ingredient15") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label19" runat="server" Text='<%# Bind("Ingredient15") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 15" SortExpression="Ingredient16">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("Ingredient16") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label20" runat="server" Text='<%# Bind("Ingredient16") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Step 16" SortExpression="Ingredient17">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("Ingredient17") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label21" runat="server" Text='<%# Bind("Ingredient17") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>             
                <asp:TemplateField HeaderText="Step 19" SortExpression="Ingredient20">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox24" runat="server" Text='<%# Bind("Ingredient20") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label24" runat="server" Text='<%# Bind("Ingredient20") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cooking Instructions" SortExpression="CookingInsturctions">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CookingInsturctions") %>' TextMode="MultiLine"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CookingInsturctions") %>' Width="700px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Recipe Name" SortExpression="RecipeName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox25" runat="server" Text='<%# Bind("RecipeName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label25" runat="server" Text='<%# Bind("RecipeName") %>' Width="300px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>            
                <asp:TemplateField HeaderText="Serving Suggestions" SortExpression="ServingSuggestions">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox27" runat="server" Text='<%# Bind("ServingSuggestions") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label27" runat="server" Text='<%# Bind("ServingSuggestions") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView> </div>
        
        <br />
        
        <br />
        <br />
    
  
</asp:content>