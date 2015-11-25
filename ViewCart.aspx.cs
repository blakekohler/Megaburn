using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using GCheckout.Checkout;       //Part of Google Checkout API
using GCheckout.Util;           //Part of Google Checkout API
using System.Globalization;            

public partial class ViewCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        // This should show a cart, unless its empty.
        if (Session["ShoppingCart"] == null)
        {
            Label1.Text = "Your shopping cart is empty";
        }
        else
        {
            Cart c = (Cart)Session["ShoppingCart"];
            GridView1.DataSource = c.Products;
            
            if (!IsPostBack)
            {
                
                GridView1.DataBind();
            }
        }
    }

    //This removes items from the cart. 
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            Cart c = (Cart)Session["ShoppingCart"];
            c.RemoveProduct(e.CommandArgument.ToString());
            GridView1.DataBind();

            if (GridView1.Rows.Count == 0)
                Label1.Text = "Your shopping cart is empty";            
        }

       


    }
    
    //Updates
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        
            Cart c = (Cart)Session["ShoppingCart"];
            string prodid = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
            int quantity = Convert.ToInt16(((TextBox)GridView1.Rows[e.NewEditIndex].FindControl("txtQuantity")).Text);
            c.UpdateQuantity(quantity, prodid);
            GridView1.EditIndex = -1;
            GridView1.DataBind();
        
    }

    //Google!!
    protected void GoogleCheckoutButton1_Click(object sender, ImageClickEventArgs e)
    {

        //Finding Button
        GCheckoutButton btn = (GCheckoutButton)LoginView1.FindControl("GCheckoutButton1");

        //Request
        CheckoutShoppingCartRequest req = btn.CreateRequest();

        req.EditCartUrl = BuildAbsolute("ViewCart.aspx");
        req.ContinueShoppingUrl = BuildAbsolute("Default.aspx");

        // adding to the request

        Cart c = (Cart)Session["ShoppingCart"];

        foreach (Prod p in c.Products)
        {
            req.AddItem(p.Name, "", p.Price, p.Quantity);
        }

        //Optional Requests-- not used. 
        req.AddStateTaxRule("CA", 0.0825, true);
        req.AddStateTaxRule("UT", 0.0625, false);
        ShippingRestrictions Only48Lower = new ShippingRestrictions();
        Only48Lower.AddAllowedCountryArea(GCheckout.AutoGen.USAreas.CONTINENTAL_48);
        req.AddFlatRateShippingMethod("UPS Ground", 7.05m, Only48Lower);
        ShippingRestrictions OnlyCA_NV = new ShippingRestrictions();
        OnlyCA_NV.AddAllowedStateCode("CA");
        OnlyCA_NV.AddAllowedStateCode("NV");
        req.AddFlatRateShippingMethod("California Express", 6.35m, OnlyCA_NV);
        req.AddFlatRateShippingMethod("USPS", 3.08m);
        req.AddPickupShippingMethod("Pick up in store", 0);


        //Request send
        GCheckoutResponse resp = req.Send();

        //If the response reports success, use the CreateOrder method of the Cart object to write the cart contents to the database as an order.
        //Use the Google checkout serial number as the orderID
        if (resp.IsGood)
        {


            bool ordercreated = c.CreateOrder(resp.SerialNumber, User.Identity.Name);

            //Shopping cart reset and send to google. Or error.
            if (ordercreated)
            {
                Session["ShoppingCart"] = null;
                //Redirect
                Response.Redirect(resp.RedirectUrl, true);
            }
            else
            {
                lblStatus.Text = "OH NO! Something went horribly wrong! Just kidding, we've had a small error. Try again later.";
            }

        }
        else
        {
            lblStatus.Text = "OH NO! Something went horribly wrong! Just kidding, we've had a small error. Try again later.";
        }



    }
    
    //Total in the footer
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
         Cart c = (Cart)Session["ShoppingCart"];
        
        //Only do the calculation if the Gridview has something in it
        if (GridView1.Rows.Count > 0)
         {
             Label lblTotal = (Label)GridView1.FooterRow.FindControl("lblTotal");
             lblTotal.Text = c.GetTotal().ToString();
         }
    }

    // Making the url
    private string BuildAbsolute(string relativeUri)
    {
        // get current uri
        Uri uri = Request.Url;
        // build absolute path
        string app = Request.ApplicationPath;
        if (!app.EndsWith("/")) app += "/";
        relativeUri = relativeUri.TrimStart('/');
        // return the absolute path
        return HttpUtility.UrlPathEncode(
          String.Format("http://{0}:{1}{2}{3}",
          uri.Host, uri.Port, app, relativeUri));
    }
}
