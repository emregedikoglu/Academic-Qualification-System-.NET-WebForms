using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ceng382LabProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            using (var myDB = new firstdbEntities())
            {
                var newuser = new users();
                newuser.username = usernameTxt.Text;
                newuser.email = emailTxt.Text;
                newuser.password = passwordTxt.Text;
                newuser.favourite_ide = favideTxt.Text;
                newuser.favourite_pl = favplTxt.Text;
                newuser.user_type = "ROLE_USER";
                newuser.is_active = true;
                newuser.point = 0;

                myDB.users.Add(newuser);
                myDB.SaveChanges();

                Response.Redirect("Login.aspx");

            }
        }
    }
}