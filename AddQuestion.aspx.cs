using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ceng382LabProject
{
    public partial class AddQuestion : System.Web.UI.Page
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
            else if (loggeduser != null)
            {
                LabelWelcome.Text = loggeduser.username;
                LabelWelcome.Visible = true;
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxQuestionText_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var myDB = new firstdbEntities())
            {
                questions q = new questions();
                users loggeduser = (users)Session["currentuser"];

                int id;
                id = myDB.questions.Max(u => u.question_id);

                q.question_id = id + 1;

                q.question_title = TextBoxTitle.Text;
                q.question_text = TextBoxQuestionText.Text;
                q.answer = TextBoxQuestionAnswer.Text;
                q.user_id = loggeduser.user_id;

                myDB.questions.Add(q);
                myDB.SaveChanges();
            }
        }
    }
}