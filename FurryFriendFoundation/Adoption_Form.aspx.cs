using System;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Web.UI.WebControls;

namespace FurryFriendFoundation
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            try
            {
                con.Open(); // Open the connection

                SqlCommand cmd = new SqlCommand("INSERT INTO AdoptionList (PetParent, PetName, PetType, Phno, Email, Address, OwnPets,Pet, Home, Age, EmgContact, Date, Signnatory) VALUES (@PetParent, @PetName, @PetType, @Phno, @Email, @Address, @OwnPets,@Pet, @Home, @Age, @EmgContact, @Date, @Signnatory)", con);

                // Add parameters to the SqlCommand
                cmd.Parameters.AddWithValue("@PetParent", fullnametxt.Text);
                cmd.Parameters.AddWithValue("@PetName", petname1txt.Text);
                cmd.Parameters.AddWithValue("@PetType", pettypetxt.SelectedItem?.Text ?? "");
                cmd.Parameters.AddWithValue("@Phno", phonetxt.Text);
                cmd.Parameters.AddWithValue("@Email", emailtxt.Text);
                cmd.Parameters.AddWithValue("@Address", addresstxt.Text);
                cmd.Parameters.AddWithValue("@OwnPets", RadioButtonList1.SelectedItem?.Text ?? "");
                cmd.Parameters.AddWithValue("@Pet", petnametxt.Text);
                cmd.Parameters.AddWithValue("@Home", hometxt.Text);
                cmd.Parameters.AddWithValue("@Age", agetxt.Text);
                cmd.Parameters.AddWithValue("@EmgContact", emgcontacttxt.Text);
                cmd.Parameters.AddWithValue("@Date", date.Text);
                cmd.Parameters.AddWithValue("@Signnatory", sign.Text);

                // Execute the SQL command
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0) // Check if the insert operation was successful
                {
                    msg.Text = "Data submitted successfully!";
                    msg.ForeColor = System.Drawing.Color.Green;

                    // Clear all fields
                    ClearFields();
                }
                else
                {
                    msg.Text = "Failed to submit the data. Please try again.";
                    msg.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                Debug.WriteLine("Error: " + ex.Message);
                // Optionally, display an error message to the user
                msg.Text = "An error occurred while processing your request. Please try again later.";
                msg.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                // Close database connection
                con.Close();
            }
        }

        // Method to clear all form fields
        private void ClearFields()
        {
            fullnametxt.Text = "";
            petname1txt.Text = "";
            pettypetxt.ClearSelection();
            phonetxt.Text = "";
            emailtxt.Text = "";
            addresstxt.Text = "";
            RadioButtonList1.ClearSelection();
            petnametxt.Text = "";
            hometxt.Text = "";
            agetxt.Text = "";
            emgcontacttxt.Text = "";
            date.Text = "";
            sign.Text = "";
        }

    }
}
