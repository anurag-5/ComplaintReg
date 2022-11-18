using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.Admin
{
    public partial class Reply : System.Web.UI.Page
    {
        BAL.ComplaintBAL obj=new BAL.ComplaintBAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Qid = Convert.ToInt32(Request.QueryString["ID"]);
            obj.Reply = TextBox1.Text;
            int i = obj.giveReplay();
            if (i == 1)
            {
                Response.Write("<script>alert('Replied')</script>");
                Response.Redirect("ViewQuery.aspx");
            }
        }
    }
}