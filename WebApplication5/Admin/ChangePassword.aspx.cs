using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5.Admin
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["projectdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
            {
                Response.Redirect("../AdminLogin.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtcpwd.Text = "";
            txtnpwd.Text = "";
            txtrnpwd.Text = "";
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string q = "select * from Admintbl where aid = '" + Session["aid"].ToString() + "'";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            cmd.ExecuteNonQuery();
            da.Fill(ds, "Admintbl");
            if (ds.Tables["Admintbl"].Rows.Count > 0)
            {

                string currentpwd = txtcpwd.Text;
                if (currentpwd == ds.Tables["Admintbl"].Rows[0][3].ToString())
                {

                    if (con.State == ConnectionState.Open)
                        con.Close();

                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    
                    q = "update Admintbl set apwd = '" + txtnpwd.Text + "' where aid = '" + Session["aid"] + "'";
                    cmd = new SqlCommand(q, con);
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Password successfully Changed'); window.location = 'AdminHome.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('update error !!'); window.location = 'AdminHome.aspx';</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert(' current password does not matched  !!'); window.location = 'AdminHome.aspx';</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('invalid user Try again !!'); window.location = 'UserHome.aspx';</script>");

            }
        }
    }
}