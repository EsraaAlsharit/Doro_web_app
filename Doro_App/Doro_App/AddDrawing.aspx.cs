using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.IO;

namespace Doro_App
{
    public partial class AddDrawing : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(abc);
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            int i;

            if (Session["user"] == null)
            {
                Response.Redirect("Home.aspx");
            }

        }

        protected void add_Click(object sender, EventArgs e)
        {
            Page.Validate("ADD");
            if (!Page.IsValid)//to check the Validation 
                return;

            SqlConnection con = new SqlConnection(abc);

            SqlDataAdapter sda = new SqlDataAdapter();


            SqlCommand cmd = new SqlCommand("insert into Drawing (Username,DrawingName,DrawingDescription,Drawing) values (@Username,@DrawingName,@DrawingDescription,@Drawing)"
                , con);


            cmd.Parameters.AddWithValue("@Username", Session["user"]);
            cmd.Parameters.AddWithValue("@DrawingName", title.Text);
            cmd.Parameters.AddWithValue("@DrawingDescription", Description.Text);
            cmd.Parameters.AddWithValue("@Drawing", FileUpload1.FileContent);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'> alert('Your Regestriation Has Been Done Successfully! You Are Now One Of Our Family! WELCOME😍');</script>");

                Response.Redirect("Profile.aspx");


            }
            catch (Exception er)
            {
                Response.Write("Error: " + er);
                Response.Write("<script language='javascript'> alert('Connection now in probelm');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}