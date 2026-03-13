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
    public partial class WebForm2 : System.Web.UI.Page
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
            txtboxemail.Text = "";
            txtboxpwd.Text = "";
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            String q = "select * From Usertbl Where uemail='" + txtboxemail.Text + "' and  upwd = '" + txtboxpwd.Text + "'";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();

            cmd.ExecuteNonQuery();
            da.Fill(ds, "Usertbl");
            if (ds.Tables["Usertbl"].Rows.Count > 0)
            {

                Session["uid"] = ds.Tables["Usertbl"].Rows[0][0].ToString();

                Response.Write("<script> alert('Login successfull'); window.location = 'User/UserHome.aspx'; </script>");
            }

        }

        protected void btnlogin_Click ()
        {

        }

        
    }
}