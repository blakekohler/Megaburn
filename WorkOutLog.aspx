<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorkOutLog.aspx.cs" Inherits="Project_WorkOutLog" MasterPageFile="~/FourthMaster.master" %>

<%@ Register src="CalroieTracker.ascx" tagname="CalroieTracker" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainServices" runat="server">
   Enter How many calories you burned!
    <br />
     <uc1:CalroieTracker ID="CalroieTracker1" runat="server" />
    <div>
        <%-- Here you can enter how many calories you burned, your name, date, and what activities.  Here you can calculate and put into the log, the other page you can just calculate if you'd like.  --%>         
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MealPlansConnectionString %>" SelectCommand="SELECT * FROM [UserLog]" DeleteCommand="DELETE FROM [UserLog] WHERE [Hmy] = @Hmy" InsertCommand="INSERT INTO [UserLog] ([CaloriesBurned], [Date], [Name], [Activity], [UserId]) VALUES (@CaloriesBurned, @Date, @Name, @Activity, @UserId)" UpdateCommand="UPDATE [UserLog] SET [CaloriesBurned] = @CaloriesBurned, [Date] = @Date, [Name] = @Name, [Activity] = @Activity, [UserId] = @UserId WHERE [Hmy] = @Hmy">
            <DeleteParameters>
                <asp:Parameter Name="Hmy" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CaloriesBurned" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Activity" Type="String" />
                <asp:Parameter Name="UserId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CaloriesBurned" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Activity" Type="String" />
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="Hmy" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Hmy" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Hmy" HeaderText="Hmy" InsertVisible="False" ReadOnly="True" SortExpression="Hmy" />
                <asp:BoundField DataField="CaloriesBurned" HeaderText="CaloriesBurned" SortExpression="CaloriesBurned" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Activity" HeaderText="Activity" SortExpression="Activity" />
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
    </div>
    
</asp:Content>
