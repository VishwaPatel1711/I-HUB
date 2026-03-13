using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5.User
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["projectdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("../UserLogin.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void pstb1_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string uid = Session["uid"].ToString(); 
            string q = "insert into Feedbacktbl(Fdate,Fdtls, Uid) values ('" + DateTime.Now.ToString("MM/dd/YYYY") +"','" +TextBox1.Text + "','" + uid +"')";
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Post successfull'); window.location = 'Feedback.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Post error !!'); window.location = 'Feedback.aspx';</script>");

            }
        }

        protected void rstb2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}