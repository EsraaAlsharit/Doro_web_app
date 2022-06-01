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
    public partial class WebForm3 : System.Web.UI.Page
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
                    nameuser.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                    useremail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    userBD.Text = ds.Tables[0].Rows[0]["BirthData"].ToString();
                    UserDetails.Text =  ds.Tables[0].Rows[0]["bio"].ToString(); // artist of guest
                  //  UserDetails.Text = "I am a " + ds.Tables[0].Rows[0]["RoleId"].ToString(); // artist of guest

                    // display the image

                    cmd.CommandText = "select FileUpload1 from Users where Username ='" + Session["user"] + "'";
                    cmd.Connection = con;
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            byte[] img = (byte[])dr["FileUpload1"];
                            String img2 = Convert.ToBase64String(img, 0, img.Length);
                            myimg.ImageUrl = "data:FileUpload1/png;base64," + img2;
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

            }

       
            
        }
    }
