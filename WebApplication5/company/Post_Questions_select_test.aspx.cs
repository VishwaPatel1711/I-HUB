using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace WebApplication5.company
{




    public partial class Post_Questions_select_test : System.Web.UI.Page
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
                string q = "select * from Testtbl";
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "Testtbl");
                if (ds.Tables["Testtbl"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["Testtbl"];
                    GridView1.DataBind();
                }
            }

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton img;
            img = (ImageButton)sender;
            Session["testid"] = img.CommandArgument.ToString();
            Response.Redirect("Post_Questions.aspx");

        }
    }
}
