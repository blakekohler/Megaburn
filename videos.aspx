<%@ Page Title="" Language="C#" MasterPageFile="~/FourthMaster.master" AutoEventWireup="true" CodeFile="videos.aspx.cs" Inherits="videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Workout Videos
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainServices" Runat="Server">
   
    <h1 style="color: #990000; right: auto; left: auto; text-align: center">Workout Vidoes:</h1>
        <hr />    
    
    <h2> What are your fitness goals? </h2>
        <%-- A user can choose their fitness goals from a dropdown list. --%>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
            <asp:ListItem Value="1">Flexibility</asp:ListItem>
            <asp:ListItem Value="2">Strength</asp:ListItem>
            <asp:ListItem Value="3">Weight Loss</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <%-- The gridview can be populated by the dropdown choices. If a user chooses strength then the gridview can show strength videos and tips etc.  --%>       
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ImageName" HeaderText="Video Name" SortExpression="ImageName" />
                <asp:TemplateField HeaderText="Video" SortExpression="ImageUrl">                
                    <ItemTemplate>
                         <asp:HyperLink ID="HyperLink1" runat="server" imageurl='<%# Bind("ImageUrl") %>' NavigateUrl='<%# Bind("NavigateUrl") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>     
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MealPlansConnectionString %>" SelectCommand="SELECT [ImageName], [ImageUrl], [NavigateUrl] FROM [WorkoutVideos] WHERE ([VideoType] = @VideoType)" OnSelecting="SqlDataSource1_Selecting" DeleteCommand="DELETE FROM [WorkoutVideos] WHERE [Hmy] = @Hmy" UpdateCommand="UPDATE [WorkoutVideos] SET [ImageName] = @ImageName, [ImageUrl] = @ImageUrl, [NavigateUrl] = @NavigateUrl, [VideoType] = @VideoType WHERE [Hmy] = @Hmy">
            <DeleteParameters>
                <asp:Parameter Name="Hmy" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="VideoType" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="ImageUrl" Type="String" />
                <asp:Parameter Name="NavigateUrl" Type="String" />
                <asp:Parameter Name="VideoType" Type="Int32" />
                <asp:Parameter Name="Hmy" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

