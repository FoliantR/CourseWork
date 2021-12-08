using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CursWork
{
    class Customer
    {
        public int Id { get; set; }
        public string FirstName { get; set; } 
        public string LastName { get; set;}
        public string Patronymic { get; set; }
        public string PhoneNumber { get; set; }

        public Customer (string firts, string last, string patron, string phoneNum) {

            FirstName = firts;

            LastName = last;   

            Patronymic = patron;

            PhoneNumber = phoneNum;
        }

    }
}
