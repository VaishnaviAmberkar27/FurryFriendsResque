using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Net.NetworkInformation;

namespace FurryFriendFoundation
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM volunteerList WHERE email LIKE @email", con);
                da.SelectCommand.Parameters.AddWithValue("@email", "%" + TextBox1.Text + "%");

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        private void BindGridView()
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"))
            {

                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT *FROM volunteerList ", con))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand("DELETE FROM volunteerList  WHERE Id=@Id", con))
                {
                    cmd.Parameters.AddWithValue("@Id", pid);
                    cmd.ExecuteNonQuery();
                }

                con.Close();
            }

            BindGridView();
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Your event handling code here
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int pId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["Id"]);
                string updatedfname = e.NewValues["fname"] != null ? e.NewValues["fname"].ToString() : string.Empty;
                string updatedlname = e.NewValues["lname"] != null ? e.NewValues["lname"].ToString() : string.Empty;
                string updatedcity = e.NewValues["city"] != null ? e.NewValues["city"].ToString() : string.Empty;
                string updatedphone = e.NewValues["Phone"] != null ? e.NewValues["phone"].ToString() : string.Empty;
                string updatedemail = e.NewValues["email"] != null ? e.NewValues["email"].ToString() : string.Empty;
                string updateddate = e.NewValues["dob"] != null ? e.NewValues["dob"].ToString() : string.Empty;

                // Implement the logic to update the data in your database
                UpdateDatabase(pId.ToString(), updatedfname, updatedlname, updatedcity, updatedphone, updatedemail, updateddate);

                GridView1.EditIndex = -1;
                BindGridView(); // Rebind the data after updating
                msg.Text = "Data updated successfully!";
            }
            catch (Exception ex)
            {
                msg.Text = "Error updating data: " + ex.Message;
            }
        }

        private void UpdateDatabase(string pId, string updatedfname, string updatedlname, string updatedcity, string updatedphone, string updatedemail, string updateddate)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

                con.Open();

                //UpDate Qury
                //string updateQuery = "UPDATE DonationDetails SET Fname = @Fname, Lname = @Lname, Email = @Email, SelectedItem = @SelectedItem, Product = @Product, Money = @Money, DonationDate = @DonationDate WHERE Id = @Id";
                string updateQuery = "UPDATE  volunteerList SET Fname = @Fname, Lname =@Lname , city = @city, phone = @phone,email = @email, dob =@dob  WHERE Id = @Id";

                using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                {
                    //(@Same name as in table,variable)
                    cmd.Parameters.AddWithValue("@Id", pId);
                    cmd.Parameters.AddWithValue("@fname", updatedfname);
                    cmd.Parameters.AddWithValue("@lname", updatedlname);
                    cmd.Parameters.AddWithValue("@city", updatedcity);
                    cmd.Parameters.AddWithValue("@phone", updatedphone);
                    cmd.Parameters.AddWithValue("@Email", updatedemail);
                    cmd.Parameters.AddWithValue("@dob", updateddate);


                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Successful update
                        Debug.WriteLine("Row updated successfully. Rows affected: " + rowsAffected);
                    }
                    else
                    {

                        Debug.WriteLine("No rows updated.");
                    }
                }

            }
            catch (Exception ex)
            {
                // Handle database update exception
                Debug.WriteLine("Error updating database: " + ex.Message);
                throw; // Rethrow the exception for higher-level handling if needed
            }

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1; // Cancels editing mode
            BindGridView(); // Rebind the GridView to display original data
        }

    }
    }

