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
    public partial class GetInternships : System.Web.UI.Page
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
                string q = "select * from Internshiptbl";
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "Internshiptbl");
                if (ds.Tables["Internshiptbl"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["Internshiptbl"];
                    GridView1.DataBind();
                }
            }

        }

        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
         
        protected void applybutton_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton img;
            img = (ImageButton)sender;
            Response.Redirect("ApplyInternship.aspx?Iid=" + img.CommandArgument.ToString());

        }
    }
}