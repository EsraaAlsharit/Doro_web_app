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
    public partial class EditProfile : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(abc);
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();

            if (Session["user"] == null)
            {
                Response.Redirect("Home.aspx");

            }
            else
            {

                if (con.State == ConnectionState.Closed)
                    con.Open();

                try
                {

                    cmd.CommandText = "select * from Users where Username ='" + Session["user"] + "'";
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    sda.Fill(ds);
                    UserName.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                    Password.Text = ds.Tables[0].Rows[0]["Password"].ToString();
                    Email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    Bio.Text = ds.Tables[0].Rows[0]["bio"].ToString();
//                    BirthData.Text = ds.Tables[0].Rows[0]["BirthData"].ToString();               

                }
                catch (Exception ex)
                {
                    Response.Write("Error" + ex);
                    Response.Write("<script language='javascript'> alert('Connection now in probelm');</script>");

                }
                finally
                {
                    con.Close();
                }
            }

        }

        protected void update_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(abc);
            SqlCommand cmd2 = new SqlCommand("update User set  Email = '" + Email.Text + "'" +
                ", Password = '" + Password.Text + "', bio = '" + Bio.Text + "' where Username = '" + Session["user"] + "' ",
                con2);
            try
            {
                con2.Open();
                cmd2.ExecuteNonQuery();
                Response.Write("<script language='javascript'> alert('the update done successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script language='javascript'> alert('the update failed check the format for date and try again');</script>");
            }
            finally
            {
                con2.Close();
                Response.Redirect("Profile.aspx");
            }
        }
    }
}