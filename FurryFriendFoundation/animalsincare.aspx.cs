using System;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FurryFriendFoundation
{
    public partial class WebForm9 : System.Web.UI.Page
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

                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT *FROM animalinCare", con))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Your event handler code
            try
            {
                string name = nametxt.Text;
                if (FileUpload1.HasFile)
                {
                    string fileName = Path.GetFileName(FileUpload1.FileName);
                    string imageFolderPath = Server.MapPath("~/Upload1/");
                    string imagePath = Path.Combine(imageFolderPath, fileName);

                    // Save the file to the server
                    FileUpload1.SaveAs(imagePath);

                    // Insert into database
                    string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        string query = "INSERT INTO animalinCare(Name, Imagepath, Description) VALUES (@Name, @Imagepath, @Description)";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Imagepath", "~/Upload1/" + fileName);
                        cmd.Parameters.AddWithValue("@Description", descriptiontxt.Text);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        msg.Text = "Data Updated !";
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

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand("DELETE FROM animalinCare WHERE Id=@Id", con))
                {
                    cmd.Parameters.AddWithValue("@Id", pid);
                    cmd.ExecuteNonQuery();
                }

                con.Close();
            }

            BindGridView();

        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            // Your event handling code here
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {

            
               
        }

        private void UpdateDatabase(string pId, string updatedname, string updatedimg, string updateddescription)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

                con.Open();

                //UpDate Qury
                //string updateQuery = "UPDATE DonationDetails SET Fname = @Fname, Lname = @Lname, Email = @Email, SelectedItem = @SelectedItem, Product = @Product, Money = @Money, DonationDate = @DonationDate WHERE Id = @Id";
                string updateQuery = "UPDATE  animalinCare SET Name=@Name, Imagepath=@Imagepath, Description=@Description  WHERE  Id = @Id";

                using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                {
                    //(@Same name as in table,variable)

                    cmd.Parameters.AddWithValue("@Id", pId);
                    cmd.Parameters.AddWithValue("@Name", updatedname);
                    cmd.Parameters.AddWithValue("@Imagepath", updatedimg);
                    cmd.Parameters.AddWithValue("@Description", updateddescription);


                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Successful update
                        Debug.WriteLine("Row updated successfully. Rows affected: " + rowsAffected);
                        BindGridView(); // Rebind the data after updating
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

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}

