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
    public partial class SignUp : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String uname = UserName.Text.Trim();

            if (Session["user"] != null)
            {
                Response.Redirect("Profile.aspx");
            }
            else
            {
               // Response.Redirect("SignUp.aspx");
            }
            SqlConnection con = new SqlConnection(abc);
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Page.Validate("ctl00$Login1");
            if (!Page.IsValid)//to check the Validation 
                return;

            String user = UserName.Text.Trim();
            String pass = Password.Text.Trim();
            int i;
            SqlConnection con = new SqlConnection(abc);
            SqlCommand cmd2 = new SqlCommand(); // for retrive user info from database
            SqlDataAdapter sda = new SqlDataAdapter();
            DataSet ds = new DataSet();

            SqlCommand cmd = new SqlCommand("insert into Users (RoleId,Username,Password,Email,BirthData,FileUpload1,bio) values (@RoleId,@Username,@Password,@Email,@BirthData,@FileUpload1,@bio)", con);

            //guest or artist
            cmd.Parameters.AddWithValue("@RoleId", "2");
            cmd.Parameters.AddWithValue("@Username", UserName.Text);
            cmd.Parameters.AddWithValue("@Password", Password.Text);
            cmd.Parameters.AddWithValue("@Email", Email.Text);
            cmd.Parameters.AddWithValue("@BirthData", BirthData.Text);
            cmd.Parameters.AddWithValue("@FileUpload1", FileUpload1.FileContent);
            cmd.Parameters.AddWithValue("@bio", Bio.Text);


            if (UserName.Text== "" || Password.Text == "" || Email.Text == "" || BirthData.Text == "" || Bio.Text=="" || FileUpload1.HasFile==false)
            {
                ermeg.Text = "You should fill all fields! Please, try again!";
            }
            else
            {
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script language='javascript'> alert('Your Regestriation Has Been Done Successfully! You Are Now One Of Our Family! WELCOME😍');</script>");

                    cmd2.CommandText = "select * from Users where Username ='" + UserName.Text + "' and Password ='" + Password.Text + "'";
                    cmd2.Connection = con;
                    sda.SelectCommand = cmd2;
                    sda.Fill(ds, "Users");
                    for (i = 0; ds.Tables[i].Rows.Count > 0; i++)
                    {
                        if (pass == ds.Tables[i].Rows[i]["Password"].ToString())
                        {
                            Session["user"] = user;
                            Session["rol"] = RoleId.SelectedValue;
                            Response.Redirect("Profile.aspx");
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Something wrong');", true);

                        }
                    }

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
}