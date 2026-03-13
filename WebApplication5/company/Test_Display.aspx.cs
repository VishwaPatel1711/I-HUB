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
    public partial class Test : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn;
            imgbtn = (ImageButton)sender;
            string q = "delete from Testtbl where TId = '" + imgbtn.CommandArgument.ToString() + "'";
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
        }
    }
}