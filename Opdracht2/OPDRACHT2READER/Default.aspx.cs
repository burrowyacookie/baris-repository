using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OPDRACHT2READER
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Listing.Items.FindByValue("10").Selected == true)
            {
                Panel1.Visible = true;
            }
            else if (Listing.Items.FindByValue("20").Selected == true)
            {
                Panel1.Visible = false;
            }


        }

        protected void btnMaakKaart_Click(object sender, EventArgs e)
        {
            string Naam, Geslacht, Hobby, Opleiding;
            Naam = txtNaam.Text;
            Geslacht = rbGeslacht.SelectedValue;
            Opleiding = cbOpleiding.SelectedValue;
            Hobby = "Hobby: ";

            if (chkHobby.SelectedValue == "1")
            {
                Hobby += "Gamen ";
            }

            if (chkHobby.SelectedValue == "2")
            {
                Hobby += "Programmeren";
            }
            string LabelKindle = "Naam: " + "<br />" + Hobby + "<br />"
                 + "Opleiding: " + Opleiding + "<br />" + "Geslacht: " + Geslacht + "<br />";
            Kindle.Text = LabelKindle;
        }
    }
}