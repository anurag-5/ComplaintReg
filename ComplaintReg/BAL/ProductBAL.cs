using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting;
using System.Web;

namespace ComplaintReg.BAL
{
    public class ProductBAL
    {
        DAL.ProductDAL obj=new DAL.ProductDAL();
        private string name;
        private int id;
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public int ProductInsert()
        {
            return obj.ProductInsert(this);
        }
        public DataTable ViewUser()
        {
            return obj.ViewUser();
        }
        public DataTable ProductList()
        {
            return obj.ProductList();
        }
        public int ProductDelete()
        {
            return obj.ProductDelete(this);
        }
        public int ProductUpdate()
        {
            return obj.ProductUpdate(this);
        }
    }
}