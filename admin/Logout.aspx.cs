using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDP_Project_01.admin
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["aid"] != null)
            {
                Session.Remove("aid");
                Response.Redirect("../admin_login.aspx");
                                
            }
            else
            {
                Response.Redirect("../admin_login.aspx");

            }
        }
    }
}