using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FurryFriendFoundation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Click_Donation(object sender, EventArgs e)
        {
            Response.Redirect("Donation_list.aspx");
        }

        protected void Click_Adoption(object sender, EventArgs e)
        {
            Response.Redirect("Adoption_list.aspx");
        }

        protected void Click_Volunteer(object sender, EventArgs e)
        {
            Response.Redirect("Volunteer_List.aspx");
        }

        protected void Click_AnimalsInCare(object sender, EventArgs e)
        {
            Response.Redirect("animalsincare.aspx");
        }

     
        protected void reports_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllReports.aspx");

        }

        protected void AnimalsForAdpotion_Click(object sender, EventArgs e)
        {
            Response.Redirect("animalslist.aspx");
        }
    }
}