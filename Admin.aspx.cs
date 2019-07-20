using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ceng382LabProject
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            users loggeduser = (users)Session["currentuser"];

            if (loggeduser == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (loggeduser.user_type == "ROLE_USER")
            {
                Response.Redirect("Home.aspx");
            }
            else if(loggeduser != null)
            {
                LabelWelcome.Text = loggeduser.username;
                LabelWelcome.Visible = true;
            }
        }
    }
}