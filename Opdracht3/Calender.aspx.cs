using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calender : System.Web.UI.Page
{
    private DateTime verjaardag;
    private string verjaardagText = " ";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            verjaardag = new DateTime(1995, 1, 1);
            kalVerjaardag.VisibleDate = verjaardag;
        }
    }

    protected void kalVerjaardag_SelectionChanged1(object sender, EventArgs e)
    {
        verjaardag = kalVerjaardag.SelectedDate;
        lblVerjaardag.Text = verjaardagText + verjaardag.ToLongDateString();

        DateTime nu = DateTime.Now;
        TimeSpan verschil = nu.Subtract(verjaardag);

        int jaren = verschil.Days / 365;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnButton_Click(object sender, EventArgs e)
    {
        String slcDate;
        slcDate = kalVerjaardag.SelectedDate.ToString("d");
        int slcYear = Convert.ToInt32(kalVerjaardag.SelectedDate.Year);
        int crtYear = 2017;
        int newYear = crtYear - slcYear;

        lblLeeftijd.Text = Convert.ToString(newYear);
        lblVerjaardag.Text = slcDate;
    }
}