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
    public partial class WebForm1 : System.Web.UI.Page
    {
		private string abc = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

		protected void Page_Load(object sender, EventArgs e)
        {
			//String uname = Login1.UserName.Trim();

			if (Session["user"] != null)
			{
				Response.Redirect("Profile.aspx");
			}
			else
			{
				// Response.Redirect("SignIn.aspx");
			}
		

		}

        protected void LoginButton_Click(object sender, EventArgs e)
        {
   //         Page.Validate("signin");
			//if (!Page.IsValid)//to check the Validation 
			//	return;

	
			SqlConnection con = new SqlConnection(abc);

            try
            {
                
                if (con.State == ConnectionState.Closed)
                    con.Open();

                var ccmd = new SqlCommand("select Users.Username, Users.RoleId, Roles.Rolename from Users  Inner JOIN Roles ON Users.RoleId = Roles.RoleId  where Users.Username = @Username and Users.Password = @Password", con);

                ccmd.Parameters.AddWithValue("@Username", Login1.UserName);
                ccmd.Parameters.AddWithValue("@Password", Login1.Password);

                //SqlDataAdapter da = new SqlDataAdapter();
                //DataTable dt = new DataTable();
                //da.Fill(dt);


                SqlDataReader rd = ccmd.ExecuteReader();
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        Session["user"] = rd["Username"].ToString();
                        Session["role"] = rd["RoleId"].ToString();
                       

                        switch (Session["role"])
                        {
                            case "1":
                                Response.Redirect("Profile.aspx");
                                break;
                            case "2":
                                Response.Redirect("Profile.aspx");
                                break;
                            case "3":
                                Response.Redirect("Profile.aspx");
                                break;
                        }
                    }
                }
                else
                {
                    Response.Redirect("Error.aspx");//You have to add a web form with name Error
                }
            }
            catch (Exception exception)
            {
                Response.Write(exception.StackTrace);
                Response.Write("<script language='javascript'> alert('Connection now in probelm');</script>");

            }
        }
	}
}