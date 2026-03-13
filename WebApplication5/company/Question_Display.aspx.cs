using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5.company
{
    public partial class Question_Display : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Post_Questions.aspx?testid=" + DropDownList1.SelectedValue.ToString());

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn;
            imgbtn = (ImageButton)sender;
            string q = "delete from Questiontbl where Qid = '" + imgbtn.CommandArgument.ToString() + "'";
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
        }
    }
}