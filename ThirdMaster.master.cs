using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ThirdMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //Show Welcome message if user is logged in
        if (Page.User.Identity.IsAuthenticated && Roles.IsUserInRole(Page.User.Identity.Name, "User"))
        {
            WelcomeLabel.InnerHtml = "Welcome, " + Page.User.Identity.Name;
        }
        //If the user is an admin, show the link to the Admin page
        if (Roles.IsUserInRole(Page.User.Identity.Name, "Admin"))
        {
            AdminLabel.InnerHtml = "<a href='Admin.aspx' class='nav'>Admin</a>";
        }


    }

    protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
    {
        //abandon shopping cart when user logs out
        Session["ShoppingCart"] = null;
    }
}
