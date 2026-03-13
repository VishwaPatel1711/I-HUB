using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace WebApplication5.User
{
    public partial class profile : System.Web.UI.Page
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

            if (!Page.IsPostBack)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string q = "select * from Usertbl where uid = '" + Session["uid"].ToString() + "'";
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "Usertbl");
                if (ds.Tables["Usertbl"].Rows.Count > 0)
                {
                    ntxtbox.Text = ds.Tables["Usertbl"].Rows[0]["uname"].ToString();
                    eitxtbox.Text = ds.Tables["Usertbl"].Rows[0]["uemail"].ToString();
                    ctxtbox.Text = ds.Tables["Usertbl"].Rows[0]["ucity"].ToString();
                    addtxtbox.Text = ds.Tables["Usertbl"].Rows[0]["uadd"].ToString();
                    cntxtbox.Text = ds.Tables["Usertbl"].Rows[0]["ucontact"].ToString();
                   
                    
                   
                    
                }


            }
        }
        protected void ntxtbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void rbtn_Click(object sender, EventArgs e)
        {
            ntxtbox.Text = "";
            cntxtbox.Text = "";
            addtxtbox.Text = "";
            ctxtbox.Text = "";
            eitxtbox.Text = "";
           
        }

        protected void ubtn_Click(object sender, EventArgs e)
        {
            // update query 
            string q = "update usertbl set uname = '" + ntxtbox.Text + "',uemail = '" + eitxtbox.Text + "', ucity='"+ctxtbox.Text+ "', uadd='"+addtxtbox.Text+"' , ucontact = '" + ctxtbox.Text + "' where uid = '" + Session["uid"].ToString() + "'";

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Profile Updated successfull'); window.location = 'UserHome.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Update error !!'); window.location = 'UserHome.aspx';</script>");



            }
        }
    }
}