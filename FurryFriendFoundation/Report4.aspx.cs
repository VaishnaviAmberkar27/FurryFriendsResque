using Microsoft.Reporting.WebForms;
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
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Connection string
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

            // SQL query
            string query = "SELECT * FROM DonationDetails";

            // Create SqlConnection
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // Create SqlCommand
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Create SqlDataAdapter
                    using (SqlDataAdapter s = new SqlDataAdapter(cmd))
                    {
                        // Create DataTable
                        DataTable dt = new DataTable();

                        // Open the connection
                        con.Open();

                        // Fill the DataTable
                        s.Fill(dt);

                        // Close the connection
                        con.Close();

                        // Clear existing data sources
                        ReportViewer1.LocalReport.DataSources.Clear();

                        // Add new data source
                        ReportDataSource rds = new ReportDataSource("DataSet1", dt);
                        ReportViewer1.LocalReport.ReportPath = Server.MapPath("rpt4.rdlc");
                        ReportViewer1.LocalReport.DataSources.Add(rds);
                        ReportViewer1.LocalReport.Refresh();
                    }
                }
            }
        }
    }
}