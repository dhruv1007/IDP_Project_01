using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace IDP_Project_01
{
    public partial class user_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Cv_DBConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnusrlogin_Click(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }

            string q = "select * from Applicant where appemail = '" + txtusremail.Text + "' and apppwd = '" + txtusrpass.Text + "'";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "Applicant");
            if (ds.Tables["Applicant"].Rows.Count > 0)
            {
                Session["appid"] = ds.Tables["Applicant"].Rows[0][0].ToString();
                Session["appname"] = ds.Tables["Applicant"].Rows[0][1].ToString();
                Response.Redirect("applicant/Dashboard.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid Applicant details !!'); window.location = 'user_login.aspx'; </script>");

            }
        }
    }
}