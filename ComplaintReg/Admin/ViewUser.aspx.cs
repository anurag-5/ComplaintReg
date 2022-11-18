using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.Admin
{
    
    public partial class WebForm2 : System.Web.UI.Page
    {
        BAL.ComplaintBAL obj=new BAL.ComplaintBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = obj.ViewUser();
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            obj.userid = id.ToString();
            int i = obj.approveuser();
            GridView1.EditIndex = -1;
            GridView1.DataSource=obj.ViewUser();
            GridView1.DataBind();

            


        }
    }
}