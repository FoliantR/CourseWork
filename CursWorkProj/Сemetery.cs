using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CursWorkProj
{
    class Cemetery
    {
        public int Id { get; set; }
        public string City { get; set; }
        public string Name { get; set; }

        private Cemetery() { }

        public Cemetery(string name, string city)
        {
            City = city;

            Name = name;

        }
    }
}
