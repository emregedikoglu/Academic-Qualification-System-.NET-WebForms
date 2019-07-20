using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ceng382LabProject
{
    public partial class listAllusers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["currentuser"] != null)
            {
                using (var myDB = new firstdbEntities())
                {
                    users loggeduser = (users)Session["currentuser"];
                    LabelWelcome.Text = loggeduser.username;
                    LabelWelcome.Visible = true;

                    var allusers = (from u in myDB.users
                                    select u).ToList();
                    var count = 0;

                    foreach (var x in allusers)
                    {
                        //TextBoxAllUsers.Text += x.username + " " + x.email + " " + x.password + "\n\n";
                        count += 1;
                    }
                    Response.Write(count);
                    ListAllUsersGridView.DataSource = allusers;
                    ListAllUsersGridView.DataBind();
                }
            }

            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ListAllUsersGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }



    }
}