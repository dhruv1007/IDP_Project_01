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
    public partial class Managecategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Cv_DBConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                string q = "select * from Categorytbl";
                if (con.State == ConnectionState.Closed)
                    con.Open();
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "Categorytbl");
                if (ds.Tables["Categorytbl"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["Categorytbl"];
                    GridView1.DataBind();

                }


            }
        }
    }
}