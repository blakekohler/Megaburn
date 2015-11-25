using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Project_Goal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoseDates_SelectedIndexChanged(object sender, EventArgs e)
    {

        //Here we want to check and see if the WeightLoss1.Text value is blank, if it is blank we don't do any calculations,
        //otherwise we do do calculations. 
        if (WeightLoss1.Text == "")
        { Result.Text = " "; }
        else
        {

            if (LoseDates.SelectedItem.Text == "12 Months")
            {

                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 365;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "11 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 335;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "10 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 305;//305 days in 10 Months. 
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "9 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 274;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "8 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 243;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "7 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 213;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "6 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 183;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "5 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 152;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "4 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 122;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "3 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 91;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "2 Months")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 61;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "1 Month")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 30;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "3 Weeks")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 21;
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "2 Weeks")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 14;//14 days in two weeks
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
            if (LoseDates.SelectedItem.Text == "1 Week")
            {
                decimal Num = decimal.Parse(WeightLoss1.Text);
                decimal result;
                result = Num / 7;//7 days in a week. 
                Result.Text = "" + Math.Round(Convert.ToDecimal(result), 2) + "" + " Pounds";
            }
        }
      
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Result_TextChanged(object sender, EventArgs e)
    {

    }
}