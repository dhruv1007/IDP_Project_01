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
    public partial class Reset_pass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Cv_DBConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if (Session["aid"] == null)
                    Response.Redirect("../admin_login.aspx");
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            string aid = Session["aid"].ToString();

            string q = "select * from admintbl where aid = '" + aid + "'";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            cmd.ExecuteNonQuery();
            da.Fill(ds, "admintbl");
            string pwd = ds.Tables["admintbl"].Rows[0][3].ToString();
            string cp = txtcpass.Text;
            if (cp == pwd)
            {
                string q1 = "update admintbl set apwd = '" + txtrpass.Text + "' where aid ='" + aid + "'";
                cmd = new SqlCommand(q1, con);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Password Updated successfully!');window.location='admin_dashboard.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('Password update Failed!');window.location='Reset_pass.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong current password!');window.location='Reset_pass.aspx';</script>");
            }
        }
    }
}