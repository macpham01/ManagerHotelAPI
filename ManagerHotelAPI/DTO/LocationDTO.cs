using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ManagerHotelAPI.DTO
{
    public class LocationDTO
    {
        public string LocationName { get; set; }
        public int? Views { get; set; }
        public string Decription { get; set; }
        public string District { get; set; }
        public string Country { get; set; }
    }
}
