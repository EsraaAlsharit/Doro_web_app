using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;
using System.Net;


namespace Doro_App
{
    public partial class ForgetPassword : System.Web.UI.Page

    {
        private String abc = WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FPEmailButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(abc);

            try
            {
                SqlConnection con = new SqlConnection(abc);
                con.Open();
                // start the connection to your database insert the data
                SqlCommand cmd = new SqlCommand("select Username, Password from Users where Email='" + FPEmail.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    MailMessage email = new MailMessage();
                    email.From = new MailAddress("bt17ali@gmail.com");
                    email.To.Add(FPEmail.Text);
                    email.Subject = "Your Forrget Username & Password In Doro!";
                    email.Body = "Hi! Here is Doro!<br/><br/> The following contents display your Username and Password<br/><br/>Your Username is: " + ds.Tables[0].Rows[0]["username"] + "<br/>Your Password is: " + ds.Tables[0].Rows[0]["Password"] + "<br/><br/>See you soon!<br/> Doro!";
                    email.IsBodyHtml = true;

                    //SMTP SERVER DETAILS
                    SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
                    smtpc.Port = 587;
                    smtpc.UseDefaultCredentials = false;
                    smtpc.EnableSsl = true;
                    String emm = "bt17ali@gmail.com";
                    String pass = "hgnljn219754";
                    smtpc.Credentials = new NetworkCredential(emm, pass);
                    smtpc.Send(email);

                    confLBL.Text = "The Username and Password have been sent to your Email successfully!";
                }
                else
                {
                    confLBL.Text = "Sorry! The entered Email does not exist in our records ☹ Please Make sure and try again!";
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
                Response.Write(ex);
                Response.Write("<script language='javascript'> alert('Connection now in probelm');</script>");
            }

            finally
            {
                conn.Close();
            }
        }
    }
}