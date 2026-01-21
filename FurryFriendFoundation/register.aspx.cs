using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FurryFriendFoundation
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Check if the email already exists in the database
            if (IsEmailExists(txtEmail.Text))
            {
                // If email exists, show an error message
                lblMessage.Text = "Email already exists. Please use a different email.";
                return;
            }

            // Proceed with inserting new record if email doesn't exist
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\visualStudio\\FurryFriendFoundation\\FurryFriendFoundation\\App_Data\\Database1.mdf;Integrated Security=True");

            SqlCommand cmd = new SqlCommand("INSERT INTO reg(fname,lname,email,contact,address,password)VALUES(@fn,@ln,@em, @co,@add,@pass)", conn);
            cmd.Parameters.AddWithValue("@fn", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@ln", txtLastName.Text);
            cmd.Parameters.AddWithValue("@em", txtEmail.Text);
            cmd.Parameters.AddWithValue("@co", Convert.ToInt64(txtContact.Text));
            cmd.Parameters.AddWithValue("@add", txtAddress.Text);
            cmd.Parameters.AddWithValue("@pass", txtpassword.Text);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { conn.Close(); }
            Response.Redirect("login.aspx");
        }

        // Method to check if the email already exists in the database
        private bool IsEmailExists(string email)
        {
            bool result = false;
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\visualStudio\\FurryFriendFoundation\\FurryFriendFoundation\\App_Data\\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM reg WHERE email = @Email", conn);
            cmd.Parameters.AddWithValue("@Email", email);
            try
            {
                conn.Open();
                int count = (int)cmd.ExecuteScalar();
                if (count > 0)
                {
                    result = true; // Email exists
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
            return result;
        }

    }
}
