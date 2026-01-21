using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FurryFriendFoundation
{
    public partial class WebForm30 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            try
            {
                con.Open(); // Open the connection

                // Ensure required fields are not empty
                if (string.IsNullOrEmpty(fnametxt.Text) || string.IsNullOrEmpty(lnametxt.Text) || string.IsNullOrEmpty(emailtxt.Text) || string.IsNullOrEmpty(datetxt.Text))
                {
                    throw new Exception("Please fill out all required fields (marked with '*').");
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO DonationDetails(Fname, Lname, Email, SelectedItem, Product, Money, DonationDate) VALUES (@Fname, @Lname, @Email, @SelectedItem, @Product, @Money, @DonationDate)", con);

                // Add parameters to the SqlCommand
                cmd.Parameters.AddWithValue("@Fname", fnametxt.Text);
                cmd.Parameters.AddWithValue("@Lname", lnametxt.Text);
                cmd.Parameters.AddWithValue("@Email", emailtxt.Text);
                cmd.Parameters.AddWithValue("@SelectedItem", RadioButtonList1.SelectedItem?.Text ?? "");
                cmd.Parameters.AddWithValue("@Product", producttxt.Text ?? "");
                cmd.Parameters.AddWithValue("@Money", moneytxt.Text ?? "");
                cmd.Parameters.AddWithValue("@DonationDate", Convert.ToDateTime(datetxt.Text));

                // Execute the SQL command
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Data successfully inserted, perform redirection
                    if (RadioButtonList1.SelectedValue == "Product")
                    {
                        Response.Redirect("product.aspx");
                    }
                    else if (RadioButtonList1.SelectedValue == "Money")
                    {
                        Response.Redirect("Payment.aspx");
                    }
                    else
                    {
                        // Handle unexpected case
                        throw new Exception("Unexpected selected value in RadioButtonList1.");
                    }
                }
                else
                {
                    // Handle error case
                    throw new Exception("No rows affected. Data not inserted.");
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                Debug.WriteLine("Error: " + ex.Message);
                // Optionally, display an error message to the user
            }
            finally
            {
                // Close database connection
                con.Close();
            }
        }

    }
}
