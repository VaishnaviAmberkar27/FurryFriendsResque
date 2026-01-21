using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace FurryFriendFoundation
{
    public partial class WebForm13 : System.Web.UI.Page
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

                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT *FROM AdoptionList", con))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM AdoptionList WHERE PetParent LIKE @PetParent", con);
                da.SelectCommand.Parameters.AddWithValue("@PetParent", "%" + TextBox1.Text + "%");

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand("DELETE FROM AdoptionList WHERE Id=@Id", con))
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
                    string updatedname = e.NewValues["PetParent"] != null ? e.NewValues["PetParent"].ToString() : string.Empty;
                    string updatedpetname = e.NewValues["PetName"] != null ? e.NewValues["PetName"].ToString() : string.Empty;
                    string updatedpettype = e.NewValues["PetType"] != null ? e.NewValues["PetType"].ToString() : string.Empty;
                    string updatedphone = e.NewValues["Phno"] != null ? Convert.ToInt64(e.NewValues["Phno"]).ToString() : string.Empty;
                    string updatedemail = e.NewValues["email"] != null ? e.NewValues["email"].ToString() : string.Empty;
                    string updatedaddress = e.NewValues["Address"] != null ? e.NewValues["Address"].ToString() : string.Empty;
                    string updatedpets = e.NewValues["OwnPets"] != null ? e.NewValues["OwnPets"].ToString() : string.Empty;
                    string updatedpetname1 = e.NewValues["PetName1"] != null ? e.NewValues["PetName1"].ToString() : string.Empty;
                    string updatedhome = e.NewValues["Home"] != null ? e.NewValues["Home"].ToString() : string.Empty;
                    string updatedage = e.NewValues["Age"] != null ? e.NewValues["Age"].ToString() : string.Empty;
                    string updatedemgcontact = e.NewValues["EmgContact"] != null ? Convert.ToInt64(e.NewValues["EmgContact"]).ToString() : string.Empty;
                    string updateddate = e.NewValues["Date"] != null ? Convert.ToDateTime(e.NewValues["Date"]).ToString("yyyy-MM-dd") : string.Empty;
                    string updatedsign = e.NewValues["Signnatory"] != null ? e.NewValues["Signnatory"].ToString() : string.Empty;
               

                // Implement the logic to update the data in your database
                UpdateDatabase(pId.ToString(), updatedname, updatedpetname, updatedpettype, updatedphone, updatedemail, updatedaddress, updatedpets, updatedpetname1, updatedhome, updatedage, updatedemgcontact, updateddate, updatedsign);

                    GridView1.EditIndex = -1;
                    BindGridView(); // Rebind the data after updating
                    msg.Text = "Data updated successfully!";

                    // Rest of your code
               
                
            }
            catch (Exception ex)
            {
                msg.Text = "Error updating data: " + ex.Message;
            }
        }

        private void UpdateDatabase(string pId, string updatedname, string updatedpetname, string updatedpettype, string updatedphone, string updatedemail, string updatedaddress,string updatedpets, string updatedpetname1, string updatehome, string updatedage,string updatedemgcontact , string updateddate, string updatedsign)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

                con.Open();

                //UpDate Qury
                //string updateQuery = "UPDATE DonationDetails SET Fname = @Fname, Lname = @Lname, Email = @Email, SelectedItem = @SelectedItem, Product = @Product, Money = @Money, DonationDate = @DonationDate WHERE Id = @Id";
                string updateQuery = "UPDATE  AdoptionList SET PetParent=@PetParent, PetName=@PetName, PetType=@PetType, Phno=@Phno, Email=@Email, Address=@Address,  OwnPets=@OwnPets, Pet=@Pet, Home=@Home, Age=@Age, EmgContact=@EmgContact, Date=@Date, Signnatory=@Signnatory WHERE Id = @Id";

                using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                {
                    //(@Same name as in table,variable)

                    cmd.Parameters.AddWithValue("@Id", pId);
                    cmd.Parameters.AddWithValue("@PetParent",updatedname);
                    cmd.Parameters.AddWithValue("@PetName", updatedpetname);
                    cmd.Parameters.AddWithValue("@PetType", updatedpettype);
                    cmd.Parameters.AddWithValue("@phno", updatedphone);
                    cmd.Parameters.AddWithValue("@Email", updatedemail);
                    cmd.Parameters.AddWithValue("@Address", updatedaddress); 
                    cmd.Parameters.AddWithValue("@OwnPets", updatedpets);
                    cmd.Parameters.AddWithValue("@Pet", updatedpetname1);
                    cmd.Parameters.AddWithValue("@Home", updatehome);
                    cmd.Parameters.AddWithValue("@Age", updatedage);
                    cmd.Parameters.AddWithValue("@EmgContact", updatedemgcontact);
                    cmd.Parameters.AddWithValue("@Date", updateddate);
                    cmd.Parameters.AddWithValue("@Signnatory", updatedsign);

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