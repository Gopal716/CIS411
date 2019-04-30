using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Question5
{
    public partial class Question5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                accountDDL.Items.Add("Savings Account");
                accountDDL.Items.Add("Checking Account");
                accountDDL.Items.Add("Student Account");
            }
        }

        protected void withdrawBtn_Click(object sender, EventArgs e)
        {
            double balance;
            double newBalance;
            

            if (double.TryParse(withdrawAmtTB.Text, out double withdrawalAmount))
            {
               

                if (accountDDL.SelectedIndex == 0)
                {
                     balance = 30345.90;
                    if (balance > withdrawalAmount)
                    {
                        newBalance = balance - withdrawalAmount;

                        withdrawalLabel.Text = "Withdrawl Successful. Your new balance is " + newBalance.ToString("C");
                    }
                    else
                    {
                        withdrawalLabel.Text = "Withdrawl amount is greater than the balance which is " + balance.ToString("C");
                    }                                  
                }



                else if (accountDDL.SelectedIndex == 1)
                {
                    balance = 40785.22;
                    if (balance > withdrawalAmount)
                    {
                        newBalance = balance - withdrawalAmount;

                        withdrawalLabel.Text = "Withdrawl Successful. Your new balance is " + newBalance.ToString("C");
                    }
                    else
                    {
                        withdrawalLabel.Text = "Withdrawl amount is greater than the balance which is " + balance.ToString("C");
                    }
                }

                else if (accountDDL.SelectedIndex == 2)
                {
                    balance = 5643.23;
                    if (balance > withdrawalAmount)
                    {
                        newBalance = balance - withdrawalAmount;

                        withdrawalLabel.Text = "Withdrawl Successful. Your new balance is " + newBalance.ToString("C");
                    }
                    else
                    {
                        withdrawalLabel.Text = "Withdrawl amount is greater than the balance which is " + balance.ToString("C");
                    }

                }



            }
      




        }
    }
}
    
