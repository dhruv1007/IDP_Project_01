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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Cv_DBConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            string q = "select * from admintbl where aemail = '" + txtemail.Text + "' and apwd = '" + txtpass.Text + "'";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "admintbl");
            if (ds.Tables["admintbl"].Rows.Count > 0)
            {
                Session["aid"] = ds.Tables["admintbl"].Rows[0][0].ToString();
                Session["aname"] = ds.Tables["admintbl"].Rows[0][1].ToString();
                Response.Redirect("admin/admin_dashboard.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid Applicant details !!'); window.location = 'admin_login.aspx'; </script>");

            }
        }
    }
}