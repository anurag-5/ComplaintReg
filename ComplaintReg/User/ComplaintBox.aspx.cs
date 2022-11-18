using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.User
{
    public partial class ComplaintBox : System.Web.UI.Page
    {
        BAL.ComplaintBAL obj=new BAL.ComplaintBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView3.DataSource = obj.UserComplaint();
            GridView3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Pid = int.Parse(DropDownList1.SelectedItem.Value);
            obj.complaint1 = TextBox1.Text;
            obj.id = Convert.ToInt32(Session["user_id"]);
            int i = obj.ComplaintInsert();
            if (i == 1)
            {
                Response.Write("<Script>alert('Success')</script>");
            }

        }
    }
}