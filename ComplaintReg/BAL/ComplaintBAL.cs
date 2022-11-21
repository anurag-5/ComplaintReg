using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ComplaintReg.BAL
{

    public class ComplaintBAL
    {
        DAL.ComplaintDAL objreg = new DAL.ComplaintDAL();
        private string _name;
        private string _email;
        private string _phone;
        private string _username;
        private int _status;
        private string _uid;
        private string _password;
        private int _pid;
        private string pcomplaint;
        private int uid;
        public string status1;
        public string _id;
        public int _Qid;
        public string _reply;


        public int Qid
        {
            get
            {
                return _Qid;
            }
            set
                { _Qid = value; }
        }
        public string Reply
        {
            get { return _reply; }
            set { _reply = value; }
        }
        

        public string Compid
        {
            get
            {
                return _id;
            }
            set
            {
                _id = value;
            }
        }

        public string stat
        {
            get
            {
                return status1;
            }
            set
            {
                status1 = value;
            }

        }
        

        public int id
        {
            get
            {
                return uid;
            }
            set
            {
                uid = value;
            }
        }
        public string complaint1
        {
            get
            {
                return pcomplaint;
            }
            set
            {
                pcomplaint = value;
            }
        }
        public int Pid
        {
            get
            {
                return _pid;
            }
            set
            {
                _pid = value;
            }
        }
        public string Name
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;
            }
        }
        public string email
        {
            get
            {
                return _email;
            }
            set
            {
                _email = value;
            }
        }
        public string phone
        {
            get
            {
                return _phone;
            }
            set
            {
                _phone = value;
            }
        }
        public string username
        {
            get
            {
                return _username;
            }
            set
            {
                _username = value;
            }
        }
        public int status
        {
            get
            {
                return _status;
            }
            set
            {
                _status = 0;
            }
        }
        public string userid
        {
            get
            {
                return _uid;
            }
            set
            {
                _uid=value;
            }
        }
        public string password
        {
            get
            {
                return _password;
            }
            set
            {
                _password=value;
            }
        }
        public int UserInsert()
        {
            return objreg.UserInsert(this);
        }
        public DataTable ViewUser()
        {
            return objreg.ViewUser();
        }
        public int approveuser()
        {
            return objreg.user_confirm(this);
        }
        public DataTable logincheck()
        {
            return objreg.logincheck(this);
        }
        public int ComplaintInsert()
        {
            return objreg.ComplaintInsert(this);
        }
        public int QueryInsert()
        {
            return objreg.QueryInsert(this);
        }
        public int ComplaintVerification()
        {
            return objreg.ComplientVerification(this);
        }
        public DataTable ViewComplaint()
        {
            return objreg.ViewComplaint();
        }
        public int ComplaintProgress()
        {
            return objreg.ComplaintProgress(this);
        }
        public DataTable ViewComplaint2()
        {
            return objreg.ViewComplaint2();
        }
        public DataTable ViewComplaint3()
        {
            return objreg.ViewComplaint3();
        }
        public DataTable UserComplaint()
        {
            return objreg.UserComplaint(this);
        }
        public DataTable ViewQuery()
        {
            return objreg.ViewQuery();
        }

        public int giveReplay()
        {
            return objreg.GiveReplay(this);
        }
        public DataTable UserQuery()
        {
            return objreg.UserQuery(this);
        }


    }
}