using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CursWorkProj
{
    class Grave
    {
        public int Id { get; set; }
        public string Name { get; set; }

        private Grave() { }
        public Grave(string name)
        {

            Name = name;

        }
    }
}
