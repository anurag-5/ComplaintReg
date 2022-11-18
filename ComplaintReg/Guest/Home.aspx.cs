using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.Guest
{
    public partial class Home : System.Web.UI.Page
    {
        BAL.ComplaintBAL objreg = new BAL.ComplaintBAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objreg.username=TextBox1.Text;
            objreg.password=TextBox2.Text;
            if(TextBox1.Text.Equals("Admin")&& TextBox2.Text.Equals("123"))
            {
                Response.Redirect("/Admin/Product.aspx");
            }

            DataTable dt = objreg.logincheck();
            if (dt.Rows.Count > 0)
            {
                int a = Convert.ToInt32(dt.Rows[0]["status"]);
                if (a == 1)
                {
                    Session["user_id"] = dt.Rows[0][0];
                    Response.Redirect("/User/UserHome.aspx");

                }
                

            }

        }
    }
}