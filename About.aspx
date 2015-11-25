<%@ Page Title="" Language="C#" MasterPageFile="~/ThirdMaster.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    MEGABURN | About Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>about</h2>
				<p>
					MEGABURN was founded in 2013 with the vision of bringing affordable personal training and coaching to all people. We've combined the best in nutrionists, doctors, trainers and dietitions to help build the perfect workout plans just for you.<br /> <b>MEGABURN is here to help you: lets Live the Healthy Life.</b>
				</p>
				<img src="images/old-couple.jpg" alt="">
				<div class="article">
					<div>
						<h3>What is our Vision</h3>
						<p>
							Our vision is to bring the benefits and knowledge of over 30 years of experience in healthy living to the masses by providing a centeralized hub with the tools you'll need to achieve the success you're looking for.
						</p>
						<h3>Our Struggles</h3>
						<p>
							MEGABURN was founded because we found ourselves struggling, just like you do to, to keep the weight off, add lean muscle mass and to stay in shape. We wanted a place were people all over who are facing that same struggle can come and get help- from a community, from our resources and most importantly from trained professionals.
						</p>
					</div>
					<div>
						<h3>Our Goals</h3>
						<p>
							Our Goals are simple; We want what you want. We want to help you succeed no matter what your health goals maybe. If you want to lose weight, gain weight or just simply become a little healthier we've got the tools and the knowledge to make your path to the Healthy Life a litle easier.
						</p>
						<h3>Our Tools for Success</h3>
						<p>
							We've built a large selection of tools into the website to allow you the oppertunity to live the best life you can. Take a look at the tools below and find out what you can do, today, to help you move towards a healthier and more fulfilled life.
						<ul>
                                <li><a href="Videos.aspx">Videos</a></li>
                                <li><a href="calories.aspx">Track Your Calories</a></li>
                                <li><a href="goal.aspx">Track and Manage Your Goals</a></li>
                                <li><a href="WorkOutLog.aspx">Select a Workout that Works</a></li>
							</ul></p>
						
							
						
						
						
						
					</div>
				</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
				<div class="testimonials">
					<h3>Clients' testimonials</h3>
					<ul>
						<li>
							<p>
								<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Desciption FROM Testimony WHERE (T_Id = 1)"></asp:SqlDataSource>
                                <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="76px">
                                    <EditItemTemplate>
                                        Desciption:
                                        <asp:TextBox ID="DesciptionTextBox" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        Desciption:
                                        <asp:TextBox ID="DesciptionTextBox" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                       
                                        <asp:Label ID="DesciptionLabel" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                </asp:FormView>
                                <br />
							</p>
							<a href="#" >-Mr.Robinson, Ohio</a>
						</li>
						<li>
							<p>
								&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Desciption FROM Testimony WHERE (T_Id = 2)"></asp:SqlDataSource>
                                <asp:FormView ID="FormView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="76px">
                                    <EditItemTemplate>
                                        Desciption:
                                        <asp:TextBox ID="DesciptionTextBox" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        Desciption:
                                        <asp:TextBox ID="DesciptionTextBox0" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                       
                                        <asp:Label ID="DesciptionLabel" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                </asp:FormView>
							</p>
							<a href="#" >-Joni Mainstreet, Minnesota</a>
						</li>
						<li>
							<p>
								<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Desciption FROM Testimony WHERE (T_Id = 3)"></asp:SqlDataSource>
                                <asp:FormView ID="FormView3" runat="server" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" Height="76px">
                                    <EditItemTemplate>
                                        Desciption:
                                        <asp:TextBox ID="DesciptionTextBox" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        Desciption:
                                        <asp:TextBox ID="DesciptionTextBox0" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                       
                                        <asp:Label ID="DesciptionLabel" runat="server" Text='<%# Bind("Desciption") %>' />
                                        <br />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                </asp:FormView>
							</p>
							<a href="#" >-Jessica Greene, New York</a>
						</li>
					</ul>
				</div>
				<div class="awards">
					<h3>awards</h3>
					<a href="#" class="first"><img src="images/award.jpg" alt=""></a> <a href="#"><img src="images/award2.jpg" alt=""></a>
				</div>
</asp:Content>

