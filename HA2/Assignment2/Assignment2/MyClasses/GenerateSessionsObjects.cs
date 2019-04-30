using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment2.MyClasses
{
    public class GenerateSessionsObjects
    {

        List<Account> accountList = new List<Account>();

        public GenerateSessionsObjects()
        {
            Account account1 = new Account();
            Account account2 = new Account();
            Account account3 = new Account();

            account1.Type = "Checking";
            account1.Balance = 7023.98;
            account1.NickName = "My Checking1";

            account2.Type = "Checking";
            account2.Balance = 12044.12;
            account2.NickName = "My Checking2";

            account3.Type = "Savings";
            account3.Balance = 30000.00;
            account3.NickName = "My Savings1";

            accountList.Add(account1);
            accountList.Add(account2);
            accountList.Add(account3);

            Customer customer = new Customer("Daniel Bert", "1234 Bathing Sun Lane, \nLouisville, KY 45523");

            HttpContext.Current.Session["customer"] = customer;
            HttpContext.Current.Session["account"] = accountList;
        }
    }
}