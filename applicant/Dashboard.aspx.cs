using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDP_Project_01.applicant
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if(Session["appid"] != null)
                {
                    Label1.Text = "Welcome  " + Session["appname"].ToString();

                }
                else
                {
                    Response.Redirect("../user_login.aspx");

                }
            }
        }
    }
}