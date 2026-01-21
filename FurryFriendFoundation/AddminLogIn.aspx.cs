using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FurryFriendFoundation
{
    public partial class WebForm29 : System.Web.UI.Page
    {
        protected void button_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text.Trim();
            string password = TextBox2.Text.Trim();

            // Check if email or password is empty
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                msg.Text = "Please enter both email and password."; // Display error message
                return;
            }

            // Correct the connection string for your LocalDB
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;";
            string query = "SELECT COUNT(1) FROM Addmin WHERE Email = @Email AND Password = @Password";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // Consider hashing the password for security

                try
                {
                    conn.Open();
                    int result = Convert.ToInt32(cmd.ExecuteScalar());

                    if (result == 1)
                    {
                        // Successful login, redirect to admin page.
                        Response.Redirect("addmin.aspx");
                    }
                    else
                    {
                        // Invalid email or password, show error message
                        msg.Text = "Invalid email or password."; // Error message in red
                    }
                }
                catch (Exception ex)
                {
                    // General error handling
                    msg.Text = "Error: " + ex.Message; // Display the error message
                }
            }
        }


    }
}
