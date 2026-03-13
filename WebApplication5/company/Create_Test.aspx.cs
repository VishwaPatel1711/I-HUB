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
    public partial class Create_Test : System.Web.UI.Page
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
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string q = "insert into Testtbl(Tname,Jobid) values ('"+TextBox1.Text+"','"+DropDownList1.SelectedValue.ToString()+"')";
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Test posted Successfully!!'); window.location = 'Test_Display.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Test posted Error!!'); window.location = 'Test_Display" +
                    "" +
                    ".aspx';</script>");

            }
        }
    }
}