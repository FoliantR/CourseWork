using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CursWorkProj
{
    class FuneralProcession
    {
        public int Id { get; set; }
        public int CemeteryId { get; set; }
        public int GraveId { get; set; }
        public string Cafe { get; set; }
        public int CoffinId { get; set; }
        public int Customer { get; set; }
        public string Date { get; set; }

        private FuneralProcession() { }

        public FuneralProcession(int CemId, int GId, string cafe, int CoffId, int client, string dateTime)
        {

            CemeteryId = CemId;

            GraveId = GId;

            Cafe = cafe;

            CoffinId = CoffId;

            Customer = client;

            Date = dateTime;
        }
    }
}
