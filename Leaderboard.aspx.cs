using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ceng382LabProject
{
    public partial class Leaderboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["currentuser"] != null)
            {
                using (var myDB = new firstdbEntities())
                {
                    /*var allusers = (from u in myDB.leaderboard
                                    orderby u.point descending
                                    select u).ToList();*/
                    users loggeduser = (users)Session["currentuser"];
                    LabelWelcome.Text = loggeduser.username;
                    LabelWelcome.Visible = true;

                    var allusers = (from u in myDB.users
                                    orderby u.point descending
                                    select u).ToList();

                    LeaderboardGridView.DataSource = allusers;
                    LeaderboardGridView.DataBind();
                }
            }

            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void LeaderboardGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}