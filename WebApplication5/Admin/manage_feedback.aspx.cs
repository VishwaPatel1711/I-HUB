using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5.Admin
{
    public partial class manage_feedback : System.Web.UI.Page
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

            if (!Page.IsPostBack)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string q = "select * from Feedbacktbl";
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "Feedbacktbl");
                if (ds.Tables["Feedbacktbl"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["Feedbacktbl"];
                    GridView1.DataBind();
                }
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn;
            imgbtn = (ImageButton)sender;
            string q = "delete from Feedbacktbl where Fid = '" + imgbtn.CommandArgument.ToString() + "'";
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
        }
    }
}