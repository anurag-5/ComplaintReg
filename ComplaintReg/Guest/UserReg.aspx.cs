using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.Guest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BAL.ComplaintBAL objreg=new BAL.ComplaintBAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objreg.Name = TextBox3.Text;
            objreg.email = TextBox4.Text;
            objreg.phone = TextBox5.Text;
            objreg.username = TextBox6.Text;
            int i = objreg.UserInsert();
            if (i == 1)
            {
                Response.Write("<Script>alert('Success')</script>");
            }
            else
            {
                Response.Write("\"<Script>alert('Failed')</script>\"");
            }
        }
        
    }
}