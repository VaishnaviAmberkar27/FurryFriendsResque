using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.IO;
using System.Xml.Linq;
using System.Security.Cryptography;

namespace FurryFriendFoundation
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        

        private void BindGridView()
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"))
            {

                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT *FROM AnimalsForAdoption ", con))
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

                using (SqlCommand cmd = new SqlCommand("DELETE FROM AnimalsForAdoption WHERE Id=@Id", con))
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

      
    
        private void UpdateDatabase(string pId, string updatedimg, string updatedpetname, string updateds, string updatedb, string updateddate, string updatedg, string updatedage)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

                con.Open();

                //UpDate Qury
                //string updateQuery = "UPDATE DonationDetails SET Fname = @Fname, Lname = @Lname, Email = @Email, SelectedItem = @SelectedItem, Product = @Product, Money = @Money, DonationDate = @DonationDate WHERE Id = @Id";
                string updateQuery = "UPDATE  AnimalsForAdoption SET ImagePath=@ImagePath, Name=@Name, Species=@Species, Breed=@Breed, DateOfAdd=@DateOfAdd, Gender=@Gender,  Age=@Age WHERE Id = @Id";

                using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                {
                    //(@Same name as in table,variable)

                    cmd.Parameters.AddWithValue("@Id", pId);
                    cmd.Parameters.AddWithValue("@ImagePath", updatedimg);
                    cmd.Parameters.AddWithValue("@Name", updatedpetname);
                    cmd.Parameters.AddWithValue("@Species", updateds);
                    cmd.Parameters.AddWithValue("@Breed", updatedb);
                    cmd.Parameters.AddWithValue("@DateOfAdd", updateddate);
                    cmd.Parameters.AddWithValue("@Gender", updatedg);
                    cmd.Parameters.AddWithValue("@Age", updatedage);
                   

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Successful update
                        Debug.WriteLine("Row updated successfully. Rows affected: " + rowsAffected);
                        BindGridView();
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                if (FileUpload1.HasFile)
                {
                    string fileName = Path.GetFileName(FileUpload1.FileName);
                    string imageFolderPath = Server.MapPath("~/Upload2/");
                    string imagePath = Path.Combine(imageFolderPath, fileName);

                    // Save the file to the server
                    FileUpload1.SaveAs(imagePath);

                    // Insert into database
                    string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {

                        string query = "INSERT INTO AnimalsForAdoption(ImagePath, Name, Species, Breed, DateOfAdd, Gender, Age ) VALUES (@ImagePath, @Name, @Species, @Breed, @DateOfAdd, @Gender, @Age )";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@ImagePath", "~/Upload2/" + fileName);
                        cmd.Parameters.AddWithValue("@Name", nametxt.Text);
                        cmd.Parameters.AddWithValue("@Species", sptxt.Text);
                        cmd.Parameters.AddWithValue("@Breed", breedtxt.Text);
                        cmd.Parameters.AddWithValue("@DateOfAdd", addtxt.Text);
                        cmd.Parameters.AddWithValue("@Gender", gendertxt.Text);
                        cmd.Parameters.AddWithValue("@Age", agetxt.Text);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        msg.Text = "Data Stored !";
                        msg.ForeColor = System.Drawing.Color.ForestGreen;

                        // Rebind GridView
                        BindGridView();
                    }
                }
                else
                {
                    msg.Text = "Please select an image to upload.";
                    msg.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                msg.Text = "An error occurred: " + ex.Message;
                msg.ForeColor = System.Drawing.Color.Red;
            }
        }
        //to display img
        protected string GetImageUrl(object imagepath)
        {
            if (imagepath != null)
            {
                string imagePathString = imagepath.ToString();
                if (!string.IsNullOrEmpty(imagePathString))
                {
                    // Check if the image path is relative
                    if (!imagePathString.StartsWith("~/"))
                    {
                        imagePathString = "~/" + imagePathString;
                    }
                    return ResolveUrl(imagePathString);
                }
            }
            return string.Empty;
        }

    }
    }
