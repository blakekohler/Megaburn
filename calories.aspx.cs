using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class calories : System.Web.UI.Page {
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (txtWeight.Text == "")//Here we make sure that if the user chooses something in the drop down box without putting anything in the weight or time boxes that the page doesn't break. 
        {
            txtResults.Text = "";
        }
        else
        { txtResults.Text = (decimal.Parse(txtMinutes.Text) * decimal.Parse(txtWeight.Text) * (decimal.Parse(DropDownList1.SelectedValue) / 100)).ToString(); }

        if (txtMinutes.Text == "")//Above the formula we use for calories is weight X Minutes X Calories/100= Calories burned. 
        {
            txtResults.Text = "";
        }
        else
        { txtResults.Text = (decimal.Parse(txtMinutes.Text) * decimal.Parse(txtWeight.Text) * (decimal.Parse(DropDownList1.SelectedValue) / 100)).ToString(); }
        
    }
  
}