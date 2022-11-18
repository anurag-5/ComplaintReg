using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.User
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BAL.ProductBAL obj=new BAL.ProductBAL();    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = obj.ViewUser();
                GridView1.DataBind();
            }
        }
    }
}