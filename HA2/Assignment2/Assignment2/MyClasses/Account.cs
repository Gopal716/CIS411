using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment2.MyClasses
{
    public class Account
    {

        public string _type;
        public double _balance;
        public string _nickname;


        public String Type
        {
            get
            {
                return _type;
            }
            set
            {
                _type = value;
            }
        }
        public Double Balance
        {
            get
            {
                return _balance;
            }
            set
            {
                _balance = value;
            }
        }
        public String NickName
        {
            get
            {
                return _nickname;
            }
            set
            {
                _nickname = value;
            }
        }

        public Boolean hasLoanOffer()
        {
            if (_balance > 15000)
            {
                return true;
            }
            else return false;
        }
    }
}