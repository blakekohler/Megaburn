<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" MasterPageFile="~/FrontPage.master" Inherits="index" %>




     
	<asp:Content ID="header" Contentplaceholderid="head" runat="server"><title>MEGABURN: Live the Healthy Life</title></asp:Content>
	
    
<asp:Content ID="Content1" ContentPlaceHolderID="contentheader" Runat="Server">
    <div>
			<div style="margin-left:232px;">
				<span>A Healthy Life...</span>
				<a href="index.html" class="logo"><img src="images/logo.png" alt=""></a>
				<span class="tagline">is a Good Life.</span>
			</div>
			<ul>
				<li class="selected">
					<a href="default.aspx">Home</a>
				</li>
				<li>
					<a href="about.aspx">About Us</a>
				</li>
				<li>
					<a href="services.aspx">Services</a>
				</li>
				<li>
					<a href="store.aspx">Store</a>
				</li>
				<li><a href="Coaches.aspx">Our Coaches</a></li>
                   <li>
					<asp:LoginStatus ID="LoginStatus1" runat="server" 
                                 onloggedout="LoginStatus1_LoggedOut" />
				</li>
				
			
                    <li ID="AdminLabel" runat="server"></li>
                    <li ID="WelcomeLabel" runat="server" class="welcomelabel">
				</li>  

			</ul>
        
        
		</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
				<img src="images/banner-2.jpg" alt="">
				<ul>
					<li><a href="WorkOutLog.aspx">Your Workouts</a>
						
					</li>
					<li>
						<a href="calories.aspx">Calorie Counter</a>
					</li>
					<li>
						<a href="goal.aspx">Your Goals</a>
					</li>
					<li>
						<a href="videos.aspx">Videos</a>
					</li>
				</ul>
			</div>
    </asp:Content>
<asp:Content ID="article" ContentPlaceHolderID="article" runat="server">
    <h2>Welcome to Your Healthy Life!</h2>
					<img src="images/run.jpg" alt=""> <p>MEGABURN is dedicated to helping you get the most out of life. We believe that you can't live life to the fullest without the benefits that come from living a healthy life. Here you'll find all the tools that you'll need to start developing the habits you need to build muscle, cut fat and develop a healthy life style. Live Well, Live Happy, Live Healthy.
				</p> 
    
</asp:Content>
