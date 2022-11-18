using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        BAL.ComplaintBAL obj = new BAL.ComplaintBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = obj.ViewComplaint();
                GridView1.DataBind();
                GridView2.DataSource = obj.ViewComplaint2();
                GridView2.DataBind();
                GridView3.DataSource = obj.ViewComplaint3();
                GridView3.DataBind();
            }
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            obj.Compid =id.ToString();

            int i = obj.ComplaintVerification();
            GridView1.EditIndex = -1;
            GridView1.DataSource = obj.ViewComplaint();
            GridView1.DataBind();
            GridView2.DataSource = obj.ViewComplaint2();
            GridView2.DataBind();
            GridView3.DataSource = obj.ViewComplaint3();
            GridView3.DataBind();



        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString());
            obj.Compid = id.ToString();
            int i = obj.ComplaintProgress();
            GridView2.EditIndex = -1; 
            GridView2.DataSource = obj.ViewComplaint2();
            GridView2.DataBind();
            GridView1.DataSource = obj.ViewComplaint();
            GridView1.DataBind();
            GridView3.DataSource = obj.ViewComplaint3();
            GridView3.DataBind();

        }


    }
}