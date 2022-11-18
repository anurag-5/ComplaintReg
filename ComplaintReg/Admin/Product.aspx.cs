using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComplaintReg.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BAL.ProductBAL obj=new BAL.ProductBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = obj.ProductList();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.Name = TextBox1.Text;
            int i = obj.ProductInsert();
            if (i == 1)
            {
                Response.Write("<Script>alert('Success')</script>");
            }
            else
            {
                Response.Write("<Script>alert('Failed')</script>");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            obj.Id = id;
            int i = obj.ProductDelete();
            GridView1.DataSource = obj.ProductList();
            GridView1.DataBind();
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox txt = new TextBox();
            txt = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
            obj.Id = id;
            obj.Name = txt.Text;
            int i = obj.ProductUpdate();
            GridView1.EditIndex = -1;
            GridView1.DataSource = obj.ProductList();
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = obj.ProductList();
            GridView1.DataBind();
        }
    }
}