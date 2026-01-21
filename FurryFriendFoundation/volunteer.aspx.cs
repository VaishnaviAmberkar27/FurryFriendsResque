using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace FurryFriendFoundation
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Validate birthdate
            DateTime dob;
            if (!DateTime.TryParse(TextBox5.Text, out dob) || dob >= DateTime.Now.Date)
            {
                msg.Text = "Please enter a valid past date for the birthdate.";
                msg.ForeColor = System.Drawing.Color.Red;
                return; // Stop processing if validation fails
            }

            // Database connection string
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

            // SQL query to insert data
            string query = "INSERT INTO volunteerList (fname, lname, city, phone, email, dob) VALUES (@fname, @lname, @city, @phone, @email, @dob)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Add parameter values to prevent SQL injection
                    cmd.Parameters.AddWithValue("@fname", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@lname", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@city", Sample2.SelectedValue);
                    cmd.Parameters.AddWithValue("@phone", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@dob", dob);

                    try
                    {
                        // Open connection and execute the query
                        con.Open();
                        cmd.ExecuteNonQuery();

                        // Clear form fields after successful submission
                        ClearFormFields();

                        // Display success message on the page
                        msg.Text = "Data submitted successfully! Thank you for being a volunteer.";
                        msg.ForeColor = System.Drawing.Color.Green;

                        // Show a JavaScript alert to confirm success
                        string script = "alert('Data submitted successfully! Thank you for being a volunteer.');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    }
                    catch (Exception ex)
                    {
                        // Log exception details (optional) and show error message
                        msg.Text = "An error occurred while submitting the data. Please try again later.";
                        msg.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }


        private void ClearFormFields()
        {
            // Clear textboxes
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;

            // Reset dropdown to default
            Sample2.SelectedIndex = 0;

            // Clear radio button selections
            RadioButtonList1.ClearSelection();
            RadioButtonList2.ClearSelection();

            // Clear any previous messages
            msg.Text = string.Empty;
        }

    }
}
