using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTML_Class
{
    public partial class Apartment : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(!IsPostBack)
            {
                ApartmentTypeDD.Items.Add("One bedroom");
                ApartmentTypeDD.Items.Add("Two bedrooms");
                ApartmentTypeDD.Items.Add("Three bedrooms");
                //for the first time
                ApartmentDescriptionLabel.Text = "780 square feet";
            }
        }

        protected void ApartmentTypeDD_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ApartmentTypeDD.SelectedIndex == 0)
            {
                ApartmentDescriptionLabel.Text = "780 square feet";
            }
            else if (ApartmentTypeDD.SelectedIndex == 1)
            {
                ApartmentDescriptionLabel.Text = "1250 square feet";
            }
            else
            {
                ApartmentDescriptionLabel.Text = "1560 square feet";
            }
        }
    }
}