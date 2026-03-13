using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Azure.Core;
using System.IO;

namespace WebApplication5.User
{
    public partial class ApplyInternship : System.Web.UI.Page
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
                if (Request.QueryString["Iid"] != null)
                {
                    Session["Iid"] = Request.QueryString["Iid"].ToString();
                    string q = "select * from Testtbl where Jobid ='" + Session["Iid"].ToString() + "'";
                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    cmd = new SqlCommand(q, con);
                    da = new SqlDataAdapter(cmd);
                    ds = new DataSet();
                    cmd.ExecuteNonQuery();
                    da.Fill(ds, "Testtbl");
                    if (ds.Tables["Testtbl"].Rows.Count > 0)
                    {
                        Session["testid"] = ds.Tables["Testtbl"].Rows[0][0].ToString();
                        Session["i"] = 0;

                    }


                }
            }
        }

        protected void Btnreset_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetInternships.aspx");

        }

        protected void Btnapply_Click(object sender, EventArgs e)
        {
            // upload  code
            string filename, fileext, filepath;
            filepath = "../uploads/";
            if(FileUpload1.HasFile)
            {
                filename = FileUpload1.FileName;
                fileext =Path.GetExtension(filename);
                if(fileext == ".pdf")
                {
                    FileUpload1.SaveAs(Server.MapPath(filepath) + filename);
                    Session["name"] = txtname.Text;
                    Session["filename"] = filepath + filename;
                    Session["dtls"] = txtdtls.Text;

                    Response.Write("<script>alert('Your details saved. Now appear for test.'); window.location = 'start_test.aspx';</script>");

                }

            }
            else
            {
                Response.Write("<script>alert('SelectCV to upload'); window.location = 'ApplyInternship.aspx';</script>");

            }
        }
    }
}