using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ceng382LabProject
{
    public partial class ShowQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["currentuser"] != null)
                {
                    users loggeduser = (users)Session["currentuser"];
                    LabelWelcome.Text = loggeduser.username;
                    LabelWelcome.Visible = true;

                    if (Request["id"] != null)
                    {
                        int qId = Convert.ToInt32(Request["id"]);

                        using (var myDB = new firstdbEntities())
                        {
                            var q = (from x in myDB.questions where (x.question_id == qId) select x).SingleOrDefault();
                            lblTitle.Text = q.question_title;
                            lblQuestion.Text = q.question_text;
                        }
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        protected void btnAnswer_Click(object sender, EventArgs e)
        {
            int qId = Convert.ToInt32(Request["id"]);
            using (var myDB = new firstdbEntities())
            {
                var q = (from x in myDB.questions where (x.question_id == qId) select x).SingleOrDefault();
                string answer = txtAnswer.Text;

                if (answer == q.answer)
                {
                    lblTrueFalse.Text = "Correct Answer";
                    btnAnswer.Visible = false;
                    txtAnswer.Visible = false;

                    solvedby s = new solvedby();
                    users loggeduser = (users)Session["currentuser"];

                    s.question_id = q.question_id;
                    s.user_id = loggeduser.user_id;

                    myDB.solvedby.Add(s);
                    myDB.SaveChanges();

                    var user = (from u in myDB.users
                                where (loggeduser.user_id == u.user_id)
                                select u).SingleOrDefault();

                    user.point += 1;

                    myDB.SaveChanges();
                }
                else
                {
                    lblTrueFalse.Text = "False Answer";
                }

            }
        }
    }
}