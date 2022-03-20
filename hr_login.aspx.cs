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
    public partial class hr_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Cv_DBConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnhrlogin_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            string q = "select * from hrtbl where hremail = '" + txthremail.Text + "' and hrpwd = '" + txthrpass.Text + "'";
            cmd = new SqlCommand(q, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "hrtbl");
            if (ds.Tables["hrtbl"].Rows.Count > 0)
            {
                Session["hrid"] = ds.Tables["hrtbl"].Rows[0][0].ToString();
                Session["hrname"] = ds.Tables["hrtbl"].Rows[0][1].ToString();
                Response.Redirect("hr/Dashboard_hr.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid Applicant details !!'); window.location = 'hr_login.aspx'; </script>");

            }
        }
    }
}