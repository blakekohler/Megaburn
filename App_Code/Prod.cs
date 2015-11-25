using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// This is a simple class representing a product that can be purchased from the site.
/// </summary>
public class Prod
{
	public Prod(string id, string name, decimal price, int qty) 
    {
        this.id = id;
        this.name = name;
        this.price = price;
        this.qty = qty;
    }

    private string name;
    private decimal price;
    private int qty;
    private string id;

    public string ID
    {
        get
        { return id; }

    }

    public string Name 
    {
        get
        { return name; }

    }


    public decimal Price 
    {
        get
        { return price; }

    }

    public int Quantity 
    {
        get
        { return qty; }
        set { qty = value; }
    }



}
