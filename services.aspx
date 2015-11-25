<%@ Page Title="" Language="C#" MasterPageFile="~/FourthMaster.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Our Services
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainServices" Runat="Server">
    <h2>Training Services</h2>
				<p>
					At MEGABURN we're dedicated to give you all the resources that you'll need to achieve the goals that you have set. Including access to an amazing group of personal trainers- each with different qualifications and experience to help specialize your workouts to meet your goals.
                 
				</p>
				<ul>
					<li>
						<a href="Coaches.aspx" class="figure"><img src="images/heart-monitoring.jpg" alt=""></a>
						<div>
							<h3><a href="Coaches.aspx">Personal Training</a></h3>
							<p>
								Every tool you need for success is at your finger tips at MEGABURN. Help is just a few clicks away. Get your own personal training regimen, made specifically for your goals. 
							</p>
							<a href="Coaches.aspx" class="more">more info</a>
						</div>
					</li>
					<li>
						<a href="heart-monitoring.html" class="figure"><img src="images/electrocardiograms.jpg" alt=""></a>
						<div>
							<h3><a href="WorkOutLog.aspx">Workout Tracking</a></h3>
							<p>
								Track every workout from start to finish and see your results as they progress over time with our charts and graphs.
							</p>
							<a href="WorkOutLog.aspx" class="more">more info</a>
						</div>
					</li>
					<li>
						<a href="goal.aspx" class="figure"><img src="images/stress-testing.jpg" alt=""></a>
						<div>
							<h3><a href="goal.aspx">Goal Management</a></h3>
							<p>
								Track and monitor your goals and see how your are doing compared to where you wanted to be when you started. 
							</p>
							<a href="goal.aspx" class="more">more info</a>
						</div>
					</li>
				</ul>
</asp:Content>

