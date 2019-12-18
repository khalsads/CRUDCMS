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
    public partial class ListPages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dbConnStr = ConfigurationManager.ConnectionStrings["CRUDCMSConnStr"].ConnectionString;
            using (MySqlConnection dbConnection = new MySqlConnection(dbConnStr))
            {
                //Database operations below
                string dbQueryStr = "SELECT pageid, page_header, page_body, page_author FROM test_user_blog;";
                using (MySqlCommand cmd = new MySqlCommand(dbQueryStr))
                {
                    using (MySqlDataAdapter CRUDCMSData = new MySqlDataAdapter())
                    {
                        cmd.Connection = dbConnection;
                        CRUDCMSData.SelectCommand = cmd;
                        using (DataTable noCodeDataTable = new DataTable())
                        {
                            CRUDCMSData.Fill(noCodeDataTable);
                            CRUDCMSPageList.DataSource = noCodeDataTable;
                            CRUDCMSPageList.DataBind();
                        }
                    }
                }
                //Close connection with database
                dbConnection.Close();
                Console.WriteLine("Connection Closed...");
            }
        }

        //This will DELETE data by Selected ID
        protected void Del_Data(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            string dbConnStr = ConfigurationManager.ConnectionStrings["CRUDCMSConnStr"].ToString();
            MySqlConnection dbConnection = new MySqlConnection(dbConnStr);

            try
            {
                //Write Statement to console pannel when connecting to database
                Console.WriteLine("Connecting to MySql...");

                //Open Connection with database
                dbConnection.Open();

                //Database operations below
                string dbQueryStr = "DELETE FROM test_user_blog WHERE test_user_blog.pageid = " + selectedID + ";";
                MySqlCommand cmd = new MySqlCommand(dbQueryStr, dbConnection);
                cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            Response.Redirect(Request.RawUrl, true);
            //Close connection with database
            dbConnection.Close();
            Console.WriteLine("Connection Closed...");
        }

    }
}