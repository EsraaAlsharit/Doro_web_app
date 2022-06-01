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

namespace Pro
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(abc);
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();
            int i;


            string  id =Request.QueryString["id"];

            if (con.State == ConnectionState.Closed)
                con.Open();

            try
            {

                cmd.CommandText = "select * from Drawing where DrawingId ='" + id + "'";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds);
               // name.Text = ds.Tables[0].Rows[0]["Username"].ToString();
               // user = ds.Tables[0].Rows[0]["Username"].ToString();
                desc.Text = ds.Tables[0].Rows[0]["DrawingDescription"].ToString();
                artist.Text = ds.Tables[0].Rows[0]["Username"].ToString();
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
                        drwing.ImageUrl = "data:Drawing/png;base64," + img2;
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

        protected void UserName(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}