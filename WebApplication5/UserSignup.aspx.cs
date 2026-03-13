using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5
{
    public partial class UserSignup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["projectdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            contacttxtbox.Text = "";
            addtxtbox.Text = "";
            citytxtbox.Text = "";
            emailtxtbox.Text = "";
            pwdtxtbox.Text = "";
            retypetxtbox.Text = "";
        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            
            string q = "insert into Usertbl(uname,uemail,upwd,ucity,uadd,ucontact) values ('" + TextBox1.Text + "','" + emailtxtbox.Text + "','" + pwdtxtbox.Text + "','" + citytxtbox.Text + "','" + addtxtbox.Text + "','" + contacttxtbox.Text + "')";
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                    Response.Write("<script>alert('Singup successfull'); window.location = 'UserLogin.aspx';</script>");
            }
            else
                {
                    Response.Write("<script>alert('Singup error !!'); window.location = 'UserSignup.aspx';</script>");

                }
           

        }
    }
}