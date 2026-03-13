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
    public partial class Company_Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["projectdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sbtn1_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string q = "select * From Companytbl Where Cemail='" + TextBox1.Text + "' and  Cpwd = '" + pwdtxt1.Text + "'";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();

            cmd.ExecuteNonQuery();
            da.Fill(ds, "Companytbl");
            if (ds.Tables["Companytbl"].Rows.Count > 0)
            {

                Session["cid"] = ds.Tables["Companytbl"].Rows[0][0].ToString();

                Response.Write("<script> alert('Login successfull'); window.location = 'company/CompanyHome.aspx'; </script>");
            }
            else
            {

                Response.Write("<script> alert('Login error!!'); window.location = 'company/CompanyHome.aspx'; </script>");

            }
        }

        protected void rstb1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            pwdtxt1.Text = "";
        }

        protected void Etxtbox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}