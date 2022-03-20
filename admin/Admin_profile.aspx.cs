using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace IDP_Project_01.admin
{
    public partial class Admin_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Cv_DBConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if(Session["aid"] == null)
                    Response.Redirect("../admin_login.aspx");
                string aid = Session["aid"].ToString();
                string q = "select * from admintbl where aid='"+aid+"'";
                if (con.State == ConnectionState.Closed)
                    con.Open();
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "admintbl");
                txtname.Text = ds.Tables["admintbl"].Rows[0][1].ToString();
                txtemail.Text = ds.Tables["admintbl"].Rows[0][2].ToString();
               


            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string aid = "1";
            string q  = "update admintbl set aname='"+ txtname.Text+"',aemail='"+ txtemail.Text+"' where aid='" + aid + "'";

            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd = new SqlCommand(q, con);
            
            
            int i = cmd.ExecuteNonQuery();
            if(i>0)
            {
                Response.Write("<script>alert('Profile updated sucessfully!'); window.location = 'admin_dashboard.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert ('Profile updated failed!'); window.location = 'Admin_profile.aspx';</script>");
            }
        }
    }
}