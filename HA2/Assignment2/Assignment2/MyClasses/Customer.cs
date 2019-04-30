using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment2.MyClasses
{
    public class Customer
    {

        private string fullAddress;
        private string fullName;


        public String FullAddress
        {
            get
            {
                return fullAddress;
            }
        }
        public String FullName
        {
            get
            {
                return fullName;
            }
        }

        public Customer(string name, string address)
        {
            fullAddress = address;
            fullName = name;
        }
    }
}