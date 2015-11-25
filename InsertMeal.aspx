<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertMeal.aspx.cs" Inherits="Project_MealPlan"  MasterPageFile="~/FourthMaster.master"%>
<asp:Content ID="Title" ContentPlaceHolderID="Title" runat="server">Add Meal</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainServices" runat="server">
       
    <div>
        <%-- on this page you can add, delete, and edit receipes, or you can choose any receip you'd like based on calories.  --%>
        <%-- The user can choose receipes betweeon 100- 300 calories etc.  --%>

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
        <br />
        
        <h3><asp:Label ID="Label22" runat="server" Text="You can add your own receipes here!"></asp:Label></h3>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="Hmy" DataSourceID="SqlDataSource1" CellPadding="4" GridLines="None" DefaultMode="Insert" ForeColor="#333333" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>               
                <asp:BoundField DataField="Calories" HeaderText="Calories" SortExpression="Calories" />
                <asp:BoundField DataField="Protein" HeaderText="Protein" SortExpression="Protein" />
                <asp:BoundField DataField="Fats" HeaderText="Fats" SortExpression="Fats" />
                <asp:BoundField DataField="Carbs" HeaderText="Carbs" SortExpression="Carbs" />
                <asp:BoundField DataField="Ingerdient1" HeaderText="Step 1" SortExpression="Ingerdient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Step 2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Step 3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Step 4" SortExpression="Ingredient5" />
                <asp:BoundField DataField="ingredient6" HeaderText="Step 5" SortExpression="ingredient6" />
                <asp:BoundField DataField="Ingredient7" HeaderText="Step 6" SortExpression="Ingredient7" />
                <asp:BoundField DataField="Ingredient8" HeaderText="Step 7" SortExpression="Ingredient8" />
                <asp:BoundField DataField="Ingredient9" HeaderText="Step 8" SortExpression="Ingredient9" />
                <asp:BoundField DataField="Ingredient10" HeaderText="Step 9" SortExpression="Ingredient10" />
                <asp:BoundField DataField="Ingredient11" HeaderText="Step 10" SortExpression="Ingredient11" />
                <asp:BoundField DataField="ingredient12" HeaderText="Step 11" SortExpression="ingredient12" />
                <asp:BoundField DataField="ingredient13" HeaderText="Step 12" SortExpression="ingredient13" />
                <asp:BoundField DataField="ingredient14" HeaderText="Step 13" SortExpression="ingredient14" />
                <asp:BoundField DataField="Ingredient15" HeaderText="Step 14" SortExpression="Ingredient15" />
                <asp:BoundField DataField="Ingredient16" HeaderText="Step 15" SortExpression="Ingredient16" />
                <asp:BoundField DataField="Ingredient17" HeaderText="Step 16" SortExpression="Ingredient17" />
                <asp:BoundField DataField="Ingredient18" HeaderText="Step 17" SortExpression="Ingredient18" />
                <asp:BoundField DataField="Ingredient19" HeaderText="Step 18" SortExpression="Ingredient19" />
                <asp:BoundField DataField="Ingredient20" HeaderText="Step 19" SortExpression="Ingredient20" />
                <asp:BoundField DataField="CookingInsturctions" HeaderText="Cooking Instructions" SortExpression="CookingInsturctions" />
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                
                <asp:BoundField DataField="ServingSuggestions" HeaderText="Serving Suggestions" SortExpression="ServingSuggestions" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>         
    </div>
  
</asp:content>