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

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
   //Add stuff to the cart.
    protected void FormView2_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        string id = ((HiddenField)(FormView2.FindControl("HiddenField1"))).Value;
        string name = ((Label)FormView2.FindControl("Prod_NameLabel")).Text;
        int qty = 1;
        decimal price = decimal.Parse(((Label)FormView2.FindControl("Prod_PriceLabel")).Text);
        
        

        //Make a shopping cart yo.


        if (Session["ShoppingCart"] == null)
        {
            Cart c = new Cart();
            c.AddProduct(id, name, price, qty);
            Session["ShoppingCart"] = c;
        }
        else
        {
            Cart c = (Cart)Session["ShoppingCart"];
            c.AddProduct(id, name, price, qty);
            Session["ShoppingCart"] = c;
        }
        //Send them to the money screen.
        Response.Redirect("ViewCart.aspx");
       
      
    }
    
}
