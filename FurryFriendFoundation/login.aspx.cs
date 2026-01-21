using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace FurryFriendFoundation
{
    public partial class WebForm8 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void button_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text.Trim();
            string password = TextBox2.Text.Trim();

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                msg.Text = "Please enter both email and password.";
                return;
            }

            // Replace with your actual connection string.
            string connectionString = "YourConnectionStringHere";
            string query = "SELECT COUNT(1) FROM Addmin WHERE Email = @Email AND Password = @Password";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);  // You might want to hash the password for security.

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
                        // Invalid login, show message.
                        msg.Text = "Invalid email or password.";
                    }
                }
                catch (Exception ex)
                {
                    msg.Text = "Error: " + ex.Message;
                }
            }
        }
    }
}
