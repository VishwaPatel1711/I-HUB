using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace WebApplication5.company
{
    public partial class company_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["projectdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
            {
                Response.Redirect("../Company_Login.aspx");

            }
            if (!Page.IsPostBack)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string q = "select * from Companytbl where Cid = '" + Session["cid"].ToString() + "'";
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "Companytbl");
                if (ds.Tables["Companytbl"].Rows.Count > 0)
                {
                    CNtxt.Text = ds.Tables["Companytbl"].Rows[0]["Cname"].ToString();
                    Etxt.Text = ds.Tables["Companytbl"].Rows[0]["Cemail"].ToString();
                    Ctxt.Text = ds.Tables["Companytbl"].Rows[0]["Ccity"].ToString();
                    Addtxt.Text = ds.Tables["Companytbl"].Rows[0]["Cadd"].ToString();
                    Contacttxt.Text = ds.Tables["Companytbl"].Rows[0]["Ccontact"].ToString();




                }
            }
        }

        protected void Ubtn_Click(object sender, EventArgs e)
        {
            //Update Query
            string q = "update Companytbl set Cname = '" + CNtxt.Text + "',Cemail = '" + Etxt.Text + "', Ccity='" + Ctxt.Text + "', Cadd='" + Addtxt.Text + "' , Ccontact = '" + Contacttxt.Text + "' where Cid = '" + Session["cid"].ToString() + "'";

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Profile Updated successfull'); window.location = 'CompanyHome.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Update error !!'); window.location = 'CompanyHome.aspx';</script>");



            }
        }

        protected void Rbtn_Click(object sender, EventArgs e)
        {
            CNtxt.Text = "";
            Addtxt.Text = "";
            Ctxt.Text = "";
            Contacttxt.Text = "";
            Etxt.Text = "";
        }
    }
}