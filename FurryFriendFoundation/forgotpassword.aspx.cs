using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;
using System.Net.Mail;
using System.Net;

namespace FurryFriendFoundation
{
    public partial class WebForm28 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Retrieve the user's email from the input
            string userEmail = txtEmail.Text.Trim();

            // Implement logic to retrieve the user's password based on the email
            // (This part depends on how you've implemented user authentication)
            string userPassword = RetrievePasswordFromDatabase(userEmail);

            // Send the password reset email
            SendPasswordResetEmail(userEmail, userPassword);

            // Display a message to the user indicating that the email has been sent
            //Response.Write("An email with your password has been sent to your email address.");

            
        }

    

        private string RetrievePasswordFromDatabase(string userEmail)
        {
            // Connection string for your SQL Server database
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\visualStudio\\FurryFriendFoundation\\FurryFriendFoundation\\App_Data\\Database1.mdf;Integrated Security=True";

            // SQL query to retrieve the password based on the email
            string query = "SELECT [Password] FROM [dbo].[Addmin] WHERE [Email] = @Email";

            string userPassword = null;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameter for the email address
                    command.Parameters.AddWithValue("@Email", userEmail);

                    connection.Open();

                    // Execute the query and retrieve the password
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Assuming the password is stored as a string in the database
                            userPassword = reader["Password"].ToString();
                        }
                    }
                }
            }

            return userPassword;
        }

        private void SendPasswordResetEmail(string userEmail, string userPassword)
        {
            try
            {
                // Configure Gmail SMTP settings
                var smtpClient = new SmtpClient("smtp.gmail.com")
                {
                    Port = 587,
                    Credentials = new NetworkCredential("vaishnaviamberkar42@gmail.com", "qervhcmytgphucpz"),
                    EnableSsl = true,
                };

                // Create and configure the email message
                var mailMessage = new MailMessage
                {
                    From = new MailAddress("vaishnaviamberkar42@gmail.com"),
                    Subject = "Password Reset",
                    Body = $"Your password: {userPassword}",
                    IsBodyHtml = false,
                };

                // Add recipient's email address
                mailMessage.To.Add(userEmail);

                // Send the email
                smtpClient.Send(mailMessage);

                // Display success message to the user
                Response.Write("An email with your password has been sent to your email address.");
            }
            catch (Exception ex)
            {
                // Display error message if email sending fails
                Response.Write("Failed to send email. Error: " + ex.Message);
            }
        }
    }
}
