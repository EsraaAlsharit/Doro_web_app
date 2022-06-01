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
    public partial class WebForm2 : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(abc);
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();

            id = Request.QueryString["id"];

            if (Session["user"] == null)
            {
                Response.Redirect("Home.aspx");
            }

            if (con.State == ConnectionState.Closed)
                con.Open();

            try
            {

                cmd.CommandText = "select * from Drawing where DrawingId '" + id + "'";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds);

                Description.Text = ds.Tables[0].Rows[0]["DrawingDescription"].ToString();
                title.Text = ds.Tables[0].Rows[0]["DrawingName"].ToString();


                // display the image

                cmd.CommandText = "select Drawing from Drawing where DrawingId ='" + id + "'";
                cmd.Connection = con;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        byte[] img = (byte[])dr["Drawing"];
                        String img2 = Convert.ToBase64String(img, 0, img.Length);
                        draw.ImageUrl = "data:Drawing/png;base64," + img2;
                    }
                }

                // end of displaying the image
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

        protected void update_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(abc);
            SqlCommand cmd2 = new SqlCommand("update Drawing set DrawingName= '" + title.Text + "', DrawingDescription = '" + Description.Text + "' where DrawingId = '" + id + "' ",
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

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(abc);
            SqlCommand cmd2 = new SqlCommand("DELETE FROM Drawing WHERE DrawingId= '" + id + "' ",
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