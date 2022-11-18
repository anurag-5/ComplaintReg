using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ComplaintReg.DAL
{
    public class ProductDAL
    {
        public SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();



        public ProductDAL()
        {
            string conn = ConfigurationManager.ConnectionStrings["Complaint"].ConnectionString;
            con = new SqlConnection(conn);
            cmd.Connection = con;
        }
        public SqlConnection Getcon()
        {
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }
        public int ProductInsert(BAL.ProductBAL objreg)
        {
            string qry = "insert into Product values('" + objreg.Name + "')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());

            return cmd.ExecuteNonQuery();
        }
        public DataTable ViewUser()
        {
            string s = "select * from Product";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable ProductList()
        {
            string s = "SELECT * FROM Product";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int ProductDelete(BAL.ProductBAL obj)
        {
                string s = "Delete from Product where Product_id = '"+obj.Id+"'";
                cmd = new SqlCommand(s, Getcon());
                return cmd.ExecuteNonQuery();
            
        }
        public int ProductUpdate(BAL.ProductBAL obj)
        {
            string qry = "update Product set product_name= '" + obj.Name + "'where product_id='" + obj.Id + "'";
            SqlCommand cmd = new SqlCommand(qry,Getcon());
            return cmd.ExecuteNonQuery();
        }


    }
}