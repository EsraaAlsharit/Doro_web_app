using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Pro
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                logout.Visible = true;
                profile.Visible = true;
                profile.Text = Session["user"].ToString();

                signin.Visible = false;
                signup.Visible = false;
            }
            else
            {
                signin.Visible = true;
                signup.Visible = true;

                logout.Visible = false;
                profile.Visible = false;
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["role"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}