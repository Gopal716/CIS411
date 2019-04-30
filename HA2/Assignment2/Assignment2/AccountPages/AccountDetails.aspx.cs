using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assignment2.MyClasses;

namespace Assignment2.AccountPages
{
    public partial class AccountDetails : System.Web.UI.Page
    {
        private static double currentAccountBal;
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["currentAccountBal"] = currentAccountBal;
            if (PreviousPage != null)
            {
                string url = PreviousPage.ToString();

                if (url.Contains("summary")) //came from account summary page
                {
                    updateBalance();
                    ListBox listbox = (ListBox)PreviousPage.FindControl("accountListBox");
                    int index = listbox.SelectedIndex;

                    List<Account> account = (List<Account>)Session["account"];
                    Customer customer = (Customer)Session["customer"];

                    AccountNameLabel.Text = account[index].NickName;
                    Session["name"] = account[index].NickName;

                    AcctTypeLabel.Text = account[index].Type;
                    Session["type"] = account[index].NickName;

                    currentAccountBal = account[index].Balance;


                    double newcurrentAccountBal = (double)(Session["currentAccountBal"]);
                    BalanceLabel.Text = newcurrentAccountBal.ToString("c");

                    if (currentAccountBal > 0)
                    {
                        LoanLabel.Text = "True";
                        Session["loan"] = "True";
                    }
                    else
                    {
                        LoanLabel.Text = "False";
                        Session["loan"] = "False";
                    }
                    AddressLabel.Text = customer.FullAddress;
                    Session["addr"] = customer.FullAddress;
                }
                else if (url.Contains("loan")) //came from loan page
                {
                    LoanLabel.Text = "came from loan";

                    double newcurrentAccountBal = (double)(Session["currentAccountBal"]);
                    BalanceLabel.Text = newcurrentAccountBal.ToString("c");


                    string name = (String)(Session["name"]);
                    string type = (String)(Session["type"]);
                    string loan = (String)(Session["loan"]);
                    string address = (String)(Session["address"]);

                    AccountNameLabel.Text = name;
                    AcctTypeLabel.Text = type;
                    LoanLabel.Text = loan;
                    AddressLabel.Text = address;
                }
                withdrawButton_Click(sender, e);
            }

        }

        protected void withdrawButton_Click(object sender, EventArgs e)
        {
            WithdrawErrorLabel.Text = "";
           

            double withdrawAmount;
            double.TryParse(withdrawTextBox.Text, out withdrawAmount);

            if (withdrawAmount <= currentAccountBal)
            {
                currentAccountBal -= withdrawAmount;
                           
                WithdrawErrorLabel.Text = withdrawAmount.ToString("c") + " withdrawn. Check new balance.";
                updateBalance();
            }
            else
            {               
                WithdrawErrorLabel.Text = withdrawAmount.ToString("c") + " requested. Withdrawal Amount is greater than Balance.";
            }
        }
        public void updateBalance()
        {
            Session["currentAccountBal"] = currentAccountBal;
            BalanceLabel.Text = currentAccountBal.ToString("c");
        }

    }
}