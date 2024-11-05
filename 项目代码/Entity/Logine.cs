using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Logine
    {
        private string _id;
        public string Id
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

        private string _password;
        public string Password
        {
            get
            {
                return _password;
            }

            set
            {
                _password = value;
            }
        }

        private string _roleid;
        public string Roleid
        {
            get
            {
                return _roleid;
            }

            set
            {
                _roleid = value;
            }
        }
    }
}
