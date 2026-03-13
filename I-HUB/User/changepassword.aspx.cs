using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5.User
{
    public partial class changepassword : System.Web.UI.Page
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            cpwdtxtpwd.Text = "";
            npwdtxtbox.Text = "";
            rnpwdtxtbox.Text = "";

        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string q = "select * from Usertbl where uid = 3";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            cmd.ExecuteNonQuery();
            da.Fill(ds, "Usertbl");
            if (ds.Tables["Usertbl"].Rows.Count > 0)
            {

                string currentpwd = cpwdtxtpwd.Text;
                if (currentpwd == ds.Tables["Usertbl"].Rows[0][3].ToString())
                {

                    if (con.State == ConnectionState.Open)
                        con.Close();

                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    q = "update Usertbl set upwd = '" + npwdtxtbox.Text + "' where uid = 3";
                    cmd = new SqlCommand(q, con);
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Password successfully Changed'); window.location = 'UserHome.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('update error !!'); window.location = 'UserHome.aspx';</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert(' current password does not matched  !!'); window.location = 'UserHome.aspx';</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('invalid user Try again !!'); window.location = 'UserHome.aspx';</script>");

            }
        }
    }
}