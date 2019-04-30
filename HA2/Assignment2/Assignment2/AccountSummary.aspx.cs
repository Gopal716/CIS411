using Assignment2.MyClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Assignment2
{
    public partial class AccountSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            new GenerateSessionsObjects();

            List<Account> account = (List<Account>)Session["account"];
            Customer customer = (Customer)Session["customer"];

            foreach (var item in account)
            {
                accountListBox.Items.Add(item.NickName);
            }
            customerLbl.Text = customer.FullName;
         

        }

        protected void detailsButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("./AccountPages/AccountDetails.aspx");
        }
    }
}