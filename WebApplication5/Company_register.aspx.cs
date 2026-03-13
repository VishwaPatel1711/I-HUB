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

namespace WebApplication5
{
    public partial class Company_register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["projectdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            string q = "insert into Companytbl(Cname,Cadd,Ccity,Ccontact,Cemail,Cpwd) values ('" + TxtCompany.Text + "','" + TxtAdd.Text + "','" + txtcity.Text + "','" + txtcontent.Text + "','" + txtemail.Text + "','" + pwdtxtbox.Text + "')";
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Singup successfull'); window.location = 'Company_Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Singup error !!'); window.location = 'Company_register.aspx';</script>");

            }
        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            TxtCompany.Text = "";
            TxtAdd.Text = "";
            txtcity.Text = "";
            txtcontent.Text = "";
            txtemail.Text = "";
            pwdtxtbox.Text = "";
            retypetxtbox.Text = "";
        }
    }
}