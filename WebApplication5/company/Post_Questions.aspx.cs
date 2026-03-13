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
    public partial class Post_Questions : System.Web.UI.Page
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
                if (Session["cid"] == null)
                {
                    Response.Redirect("../Company_Login.aspx");

                }
                /*if (Request.QueryString["testid"]!= null)
                {
                    Session["testid"] = Request.QueryString["testid"].ToString();
                    ViewState["testid"] = Request.QueryString["testid"].ToString();

                }*/
                else
                {
                   // Response.Redirect("Test_Display.aspx");

                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            int testid = Convert.ToInt32(Session["testid"].ToString());
            
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            string q = "insert into Questiontbl(Question,Option1,option2,Option3,Option4,Correct_Answer, testid) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + testid + "')";

            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Post Question successfull'); window.location = 'Post_Questions.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Post Question error !!'); window.location = 'Post_Questions.aspx';</script>");

            }

        }
    }
}