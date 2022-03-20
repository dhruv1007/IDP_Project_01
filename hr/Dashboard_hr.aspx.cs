using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDP_Project_01.hr
{
    public partial class Dashboard_hr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["hrid"] != null)
                {
                    Label1.Text = "Welcome  " + Session["hrname"].ToString();

                }
                else
                {
                    Response.Redirect("../hr_login.aspx");

                }
            }
        }
    }
}