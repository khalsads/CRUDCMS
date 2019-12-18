using System;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUDCMS
{
    public partial class Pages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddPageBtn_Click(object sender, EventArgs e)
        {
            //Connection String in Web.config file.
            string dbConnStr = ConfigurationManager.ConnectionStrings["CRUDCMSConnStr"].ToString();
            MySqlConnection dbConnection = new MySqlConnection(dbConnStr);

            try
            {
                //Write Statement to console pannel when connecting to database
                Console.WriteLine("Connecting to MySql...");

                //Open Connection with database
                dbConnection.Open();

                //Database operations below
                string dbQueryStr = "INSERT INTO test_user_blog (page_header, page_body, page_author) VALUES ('" + PageHeading.Text + "', '" + PageBody.Text + "', 'Dhanpreet Singh');";

                MySqlCommand cmd = new MySqlCommand(dbQueryStr, dbConnection);

                cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            //Close connection with database
            dbConnection.Close();
            Console.WriteLine("Connection Closed...");
            AddPage.InnerHtml = "Page Added Successfully";
        }

        protected void sidebar_AddNewPage_Click(object sender, EventArgs e)
        {
            AddPage.Attributes["class"] = "hidden";

        }

        protected void sidebar_AllPages_Click(object sender, EventArgs e)
        {

        }
    }
}