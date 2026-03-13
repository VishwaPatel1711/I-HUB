using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace WebApplication5.company
{
    public partial class Post_Internship : System.Web.UI.Page
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

        protected void Brst_Click(object sender, EventArgs e)
        {
            Ttbox1.Text = "";
            Bddl1.Text = "";
            Dtxtbox1.Text = "";
            
            Yrb1.Text = "";
            Nrb1.Text = "";
            TextBox1.Text = "";
            
        }

        protected void Bsub_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            // upload file 
            string filenm, filepath, filext;
            filenm = "";
            filepath = "internship_files/";
            
            if (FileUpload1.HasFile)
            {
                filenm = FileUpload1.FileName;
                filext = Path.GetExtension(filenm);
                if ((filext == ".pdf") || (filext == ".docx") || (filext == ".doc"))
                {
                    filenm = filepath + filenm;
                    string st = "";
                    if (Yrb1.Checked == true)
                        st = "YES";
                    else
                        st = "NO";




                    string q = "insert into Internshiptbl(Idt, Cid, Utitle,Ubranch,Udetails,Ufiles,IS_Stipend,Duration,SAmount) values ('" + DateTime.Now.ToString("MM/dd/yyyy") + "','" + Session["cid"].ToString() + "','"+ Ttbox1.Text + Bddl1.Text + "','" + Dtxtbox1.Text + "','" + filenm + "','" +st+ "','"+ "','" + DropDownList1.SelectedItem.ToString() +"','" +TextBox1.Text+ "')";
                    cmd = new SqlCommand(q, con);
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Successfully Internship posted'); window.location = 'Post_Internship.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('error to post Internship !!'); window.location = 'Post_Internship.aspx';</script>");

                    }
                }
                else
                {
                    Response.Write("<script>alert('select only pdf or docx file !!'); window.location = 'Post_Internship.aspx';</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('select file for internships !!'); window.location = 'Post_Internship.aspx';</script>");

            }
        }

        protected void Dtxtbox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Bddl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}