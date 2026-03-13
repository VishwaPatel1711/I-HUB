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
    public partial class start_test : System.Web.UI.Page
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


            if (Session["Iid"] != null)
            {
                int count = 0;
                string q = "select * from  Questiontbl where testid ='" + Session["testid"].ToString() + "'";
                if (con.State == ConnectionState.Closed)
                    con.Open();
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "Questiontbl");
                if (ds.Tables["Questiontbl"].Rows.Count > 0)
                {
                    count = ds.Tables["Questiontbl"].Rows.Count;
                    //    Session["qno"] = (Convert.ToInt32(Session["qno"].ToString()) + 1).ToString();

                    if (Convert.ToInt32(Session["i"].ToString()) < count)
                    {
                        int i = Convert.ToInt32(Session["i"].ToString());
                        lblquestion.Text = ds.Tables["Questiontbl"].Rows[i][1].ToString();
                        Rdboption1.Text = ds.Tables["Questiontbl"].Rows[i][2].ToString();
                        Rdboption2.Text = ds.Tables["Questiontbl"].Rows[i][3].ToString();
                        Rdboption3.Text = ds.Tables["Questiontbl"].Rows[i][4].ToString();
                        Rdboption4.Text = ds.Tables["Questiontbl"].Rows[i][5].ToString();
                        Session["correctans"] = ds.Tables["Questiontbl"].Rows[i][6].ToString();
                        Session["i"] = (Convert.ToInt32(Session["i"].ToString()) + 1).ToString();


                    }
                    else
                    {
                        //
                        int cvrank, testrank;
                        cvrank = 5;
                        testrank = Convert.ToInt32(Session["ans_count"].ToString());

                        q = "insert into InternshipApplicationtbl (IAdt,Uid,Uname, Udetails, Astatus,Iid, CVrank, Testrank, cvfile) values ('" + DateTime.Now.ToString("MM/dd/yyyy") + "','" + Session["uid"].ToString() + "','" + Session["name"].ToString() +"','"+ Session["dtls"].ToString() + "', 'PENDING', '" + Session["Iid"].ToString() +"','"+ cvrank + "','" + testrank + "','" + Session["filename"].ToString() + "')";
                        if (con.State == ConnectionState.Closed)
                            con.Open();
                        cmd = new SqlCommand(q, con);
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            //Session.Remove("ans_count");
                            //Session.Remove("Iid");
                            //Session.Remove("name");
                            //Session.Remove("dtls");
                            //Session.Remove("filename");

                            //Session.Remove("qno");
                            //Session.Remove("correctans");

                            Response.Write("<script>alert('Test Completed.'); window.location = 'MyApplication.aspx';</script>");
                        }
                        else
                            Response.Write("<script>alert('Test Error.'); window.location = 'MyApplication.aspx';</script>");

                    }


                    /* else
                     {
                        // Response.Write("<script>window.location = 'GetInternships.aspx';</script>");

                     }*/

                }
            }
        }

        

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            string user_ans = "";
            if (Rdboption1.Checked == true)
                user_ans = "1";
            else if (Rdboption2.Checked == true)
                user_ans = "2";
            else if (Rdboption3.Checked == true)
                user_ans = "3";
            else
                user_ans = "4";
            if(user_ans == Session["correctans"].ToString())
            {
                if (Session["ans_count"]== null)
                {
                    Session["ans_count"] = 1;
                }
                else
                {

                    Session["ans_count"] = (Convert.ToInt32(Session["ans_count"].ToString())+1).ToString();

                }
            }
            else
            {
                Session["ans_count"] = 0;

            }
            Rdboption1.Checked = false;
            Rdboption2.Checked = false;
            Rdboption3.Checked = false;
            Rdboption4.Checked = false;



        }
    }
}