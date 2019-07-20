using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ceng382LabProject
{
    public partial class Questions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["currentuser"] != null)
            {
                users loggeduser = (users)Session["currentuser"];
                LabelWelcome.Text = loggeduser.username;
                LabelWelcome.Visible = true;

                using (var myDB = new firstdbEntities())
                {
                    var q = (from x in myDB.questions select x).ToList();
                    DataList1.DataSource = q;
                    DataList1.DataBind();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ButtonSquareNumbers_Click(object sender, EventArgs e)
        {
        }
    }
}