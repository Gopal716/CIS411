using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assignment2.MyClasses;

namespace Assignment2.AccountPages
{
   

    public partial class LoanApplicationPage : System.Web.UI.Page
    {
        private static double savedBalance;
        protected void Page_Load(object sender, EventArgs e)
        {
            double currentAccountBal = (double)(Session["currentAccountBal"]);
            savedBalance = currentAccountBal;

            if (PreviousPage != null)
            {
                Customer customer = (Customer)Session["customer"];
                NameLabel.Text = customer.FullName;

            }


        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (approvalStatus())
            {
                LoanApprovalLabel.Text = "Congratulations!! Your loan is approved.";
            }
            else
            {
                LoanApprovalLabel.Text = "Your loan is not approved. Sorry!!";
            }
        }


        public Boolean approvalStatus()
        {
            double salary;
            double age;
            double amount;

            double.TryParse(salaryTextBox.Text, out salary);           
            double.TryParse(ageTextBox.Text, out age);          
            double.TryParse(loanAmtTextBox.Text, out amount);

            

            if (age > 18 && amount < savedBalance && amount < (0.5 * salary))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}