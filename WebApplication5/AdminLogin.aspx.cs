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
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["projectdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            txtboxpwd.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            String q = "select * From Admintbl Where aemail='" + TextBox1.Text + "' and  apwd = '" + txtboxpwd.Text + "'";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();

            cmd.ExecuteNonQuery();
            da.Fill(ds, "Admintbl");
            if (ds.Tables["Admintbl"].Rows.Count > 0)
            {

                Session["aid"] = ds.Tables["Admintbl"].Rows[0][0].ToString();

                Response.Write("<script> alert('Login successfull'); window.location = 'Admin/AdminHome.aspx'; </script>");
            }
        }

        
       
    }
}