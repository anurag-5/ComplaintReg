using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.Admin
{
    public partial class ViewQuery : System.Web.UI.Page
    {
        BAL.ComplaintBAL obj=new BAL.ComplaintBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = obj.ViewQuery();
                GridView1.DataBind();
            }
        }
    }
}