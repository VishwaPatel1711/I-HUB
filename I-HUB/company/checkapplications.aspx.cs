using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5.company
{
    public partial class checkapplications : System.Web.UI.Page
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
            }
        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            // find the applications for a particular internships

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string q = "select * from InternshipApplicationtbl where Iid =' " + DDLJobs.SelectedValue.ToString() + "' and Astatus = 'PENDING' order by CVrank, Testrank";


            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            cmd.ExecuteNonQuery();
            da.Fill(ds, "InternshipApplicationtbl");
            if (ds.Tables["InternshipApplicationtbl"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["InternshipApplicationtbl"];
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            Button btn1;
            btn1 = (Button)sender;
            string q = "update InternshipApplicationtbl set Astatus = 'ACCEPTED' where IAid= '" + btn1.CommandArgument.ToString() + "'";
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
                Response.Write("<script>alert('Application accepted'); window.location ='checkapplications.aspx'; </script>");
            else
                Response.Write("<script>alert('Application Processing Error !!'); window.location ='checkapplications.aspx'; </script>");





        }

        protected void BtnReject_Click(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            Button btn1;
            btn1 = (Button)sender;
            string q = "update InternshipApplicationtbl set Astatus = 'REJECTED' where IAid= '" + btn1.CommandArgument.ToString() + "'";
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
                Response.Write("<script>alert('Application rejected'); window.location ='checkapplications.aspx'; </script>");
            else
                Response.Write("<script>alert('Application Processing Error !!'); window.location ='checkapplications.aspx'; </script>");



        }
    }
}