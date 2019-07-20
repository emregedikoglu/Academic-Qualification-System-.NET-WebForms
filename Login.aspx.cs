using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ceng382LabProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            using (var myDB = new firstdbEntities())
            {
                users loggeduser = (from u in myDB.users
                                    where u.email == TextBoxEmail.Text && u.password == TextBoxPass.Text
                                    select u).SingleOrDefault();

                if (loggeduser != null)
                {
                    Session["currentuser"] = loggeduser;

                    if(loggeduser.user_type == "ROLE_ADMIN")
                        Response.Redirect("Admin.aspx");
                    else
                        Response.Redirect("Home.aspx");
                }
            }

        }
    }
}