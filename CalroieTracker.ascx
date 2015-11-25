<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CalroieTracker.ascx.cs" Inherits="CalroieTracker" %>
<!-- This is where we'll build out the Calorie Tracker -->
<asp:DetailsView ID="DetailsView1" defaultmode="Insert" runat ="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="Hmy" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Hmy" HeaderText="Hmy" InsertVisible="False" ReadOnly="True" SortExpression="Hmy" />
                <asp:TemplateField HeaderText="CaloriesBurned" SortExpression="CaloriesBurned">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CaloriesBurned") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CaloriesBurned") %>'></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator2" runat="server" display="Dynamic"   ErrorMessage ="Please enter a number greater than zero." ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="integer"></asp:CompareValidator> 
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CaloriesBurned") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" SortExpression="Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator3" runat="server" Display="Dynamic" ErrorMessage ="Please enter a date between 1/1/2000 and now." ControlToValidate="TextBox2" Operator="DataTypeCheck" type="Date"></asp:CompareValidator> 
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator4" runat="server" Display="Dynamic" ErrorMessage="Please enter your name" ControlToValidate="TextBox3" Operator="DataTypeCheck" Type="String"></asp:CompareValidator> 
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Activity" SortExpression="Activity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Activity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Activity") %>'></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator5" runat="server" Display="Dynamic" ErrorMessage="Please enter an activity." ControlToValidate="TextBox4" Operator="DataTypeCheck" type="String"></asp:CompareValidator> 
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Activity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserId" SortExpression="UserId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UserId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UserId") %>'></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator6" runat="server"  Display="Dynamic" ErrorMessage="Please enter a number greater than zero." ControlToValidate="TextBox5" Operator="DataTypeCheck" Type="integer"></asp:CompareValidator> 
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("UserId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MealPlansConnectionString %>" SelectCommand="select * from UserLog" InsertCommand="INSERT INTO UserLog(CaloriesBurned, Date, Name, Activity, UserId) VALUES (@CaloriesBurned, @Date, @Name, @Activity, @UserId)">
            <InsertParameters>
                <asp:Parameter Name="CaloriesBurned" Type="Int32" />
                <asp:Parameter Name="Date" DbType="Date" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Activity" Type="String" />
                <asp:Parameter Name="UserId" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>