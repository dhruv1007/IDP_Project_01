using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDP_Project_01.admin
{
    public partial class admin_dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["aid"] != null)
                {
                    Label1.Text = "Welcome  " + Session["aname"].ToString();

                }
                else
                {
                    Response.Redirect("../admin_login.aspx");

                }
            }
        }
    }
}