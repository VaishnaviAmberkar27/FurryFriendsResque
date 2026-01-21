using System;
using System.Web;
using System.Web.UI;

namespace FurryFriendFoundation
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic (if any)
        }

        // This is the Button1_Click event handler
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Redirect to Success2.aspx page
            Response.Redirect("Success2.aspx");
        }
    }
}
