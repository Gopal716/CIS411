using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Question1
{
    public partial class Question1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                selectBookDDL.Items.Add("Introduction to MIS");
                selectBookDDL.Items.Add("Introduction to Marketing");
                selectBookDDL.Items.Add("Introduction to Finance");
            }
        }

        protected void purchaseBtn_Click(object sender, EventArgs e)
        {
            
            double bookPrice;

            if (int.TryParse(addQuantityTB.Text, out int quantity))
            {


                if (selectBookDDL.SelectedIndex == 0)
                {
                    bookPrice = 20 * quantity;


                    responseLbl.Text = "You have selected " + quantity + " number of Introduction to MIS. The price is: " + bookPrice.ToString("C");

                }
                else if (selectBookDDL.SelectedIndex == 1 && quantity > 0)
                {
                    bookPrice = 30 * quantity;
                    responseLbl.Text = "You have selected " + quantity + " number of Introduction to Marketing. The price is: " + bookPrice.ToString("C");

                }
                else if (selectBookDDL.SelectedIndex == 2 && quantity > 0)
                {
                    bookPrice = 40 * quantity;
                    responseLbl.Text = "You have selected " + quantity + " number of Introduction to Finance. The price is: " + bookPrice.ToString("C");

                }

                else
                {
                    responseLbl.Text = "Enter valid Quantity!";
                }

            }
            else
            {
                responseLbl.Text = "Enter valid Quantity!";
            }





        }
        
    }
}