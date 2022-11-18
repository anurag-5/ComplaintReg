using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Runtime.Remoting;
using System.Security.Cryptography;
using System.Web;

namespace ComplaintReg.DAL
{
    public class ComplaintDAL
    {
        public SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();



        public ComplaintDAL()
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
        public int UserInsert(BAL.ComplaintBAL objreg)
        {
            string qry = "insert into UserReg values('" + objreg.Name + "','" + objreg.email + "','" + objreg.status + "','" + objreg.phone + "','" + objreg.username + "')";
            
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            qry = "insert into Login values('" + objreg.username + "','" + 123 + "','"+0+"')";
            cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public DataTable ViewUser()
        {
            string s = "select * from Login where status='"+0+"'";
            SqlCommand cmd= new SqlCommand(s, Getcon());
            SqlDataAdapter da=new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            return dt;
        }
        public int user_confirm(BAL.ComplaintBAL obj)
        {
            string s="update Login set status='"+1+"' where userid='"+obj.userid+"'";
            cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public DataTable logincheck(BAL.ComplaintBAL obj)
        {
            string s = "SELECT * FROM Login WHERE username='"+obj.username+"' AND password='"+obj.password+"' ";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int ComplaintInsert(BAL.ComplaintBAL objreg)
        {
            string qry = "insert into ComplaintBox values('" + objreg.Pid + "','" + objreg.complaint1 + "','" + objreg.id + "',GETDATE(),'not verified')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public int QueryInsert(BAL.ComplaintBAL objreg)
        {
            string qry = "insert into Query values('" + objreg.Pid + "','" + objreg.id + "','" + objreg.complaint1 + "',GETDATE())";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public int ComplientVerification(BAL.ComplaintBAL obj)
        {
            string s = "update Complaintbox set status='Verified' where cid ='" + obj.Compid + "'";
            cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public DataTable ViewComplaint()
        {
            string s = "SELECT Complaintbox.cid, Product.product_name, Complaintbox.Comp, Login.username, Complaintbox.Date, Complaintbox.status FROM Product CROSS JOIN Login INNER JOIN Complaintbox ON Product.product_id = Complaintbox.pid AND Login.userid = Complaintbox.uid AND Complaintbox.status='On progress'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int ComplaintProgress(BAL.ComplaintBAL obj)
        {
            string s = "update Complaintbox set status='On Progress' where cid ='" + obj.Compid + "'";
            cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public DataTable ViewComplaint2()
        {
            string s = "SELECT Complaintbox.cid, Product.product_name, Complaintbox.Comp, Login.username, Complaintbox.Date, Complaintbox.status FROM Product CROSS JOIN Login INNER JOIN Complaintbox ON Product.product_id = Complaintbox.pid AND Login.userid = Complaintbox.uid AND Complaintbox.status='not verified'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable ViewComplaint3()
        {
            string s = "SELECT Complaintbox.cid, Product.product_name, Complaintbox.Comp, Login.username, Complaintbox.Date, Complaintbox.status FROM Product CROSS JOIN Login INNER JOIN Complaintbox ON Product.product_id = Complaintbox.pid AND Login.userid = Complaintbox.uid AND Complaintbox.status='verified'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable UserComplaint()
        {
            string s = "SELECT Complaintbox.cid, Product.product_name, Complaintbox.Comp, Login.username, Complaintbox.Date, Complaintbox.status FROM Product CROSS JOIN Login INNER JOIN Complaintbox ON Product.product_id = Complaintbox.pid AND Login.userid = Complaintbox.uid";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable ViewQuery()
        {
            string s = "SELECT Product.product_name, Query.msg, Login.username, Query.qdate FROM Product CROSS JOIN Login INNER JOIN Query ON Product.product_id = Query.pid AND Login.userid = Query.uid";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }


        public int GiveReplay(BAL.ComplaintBAL obj)
        {
            string s = "UPDATE Query SET replay='" + obj.Reply + "' WHERE qd='" + obj.Qid + "'";
            SqlCommand cmd = new SqlCommand(s,Getcon());
            return cmd.ExecuteNonQuery();
        }

    }
}