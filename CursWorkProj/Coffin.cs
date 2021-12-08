using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CursWorkProj
{
    class Coffin
    {
        public int Id { get; set; }
        public string Material { get; set; }

        private Coffin() { }
        public Coffin(string material)
        {

            Material = material;

        }
    }
}
