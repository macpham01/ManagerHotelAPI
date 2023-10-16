using System;
using System.Collections.Generic;

#nullable disable

namespace ManagerHotelAPI.Models
{
    public partial class Location
    {
        public string Id { get; set; }
        public string LocationName { get; set; }
        public int? Views { get; set; }
        public string Decription { get; set; }
        public DateTime? CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public string ModifiedBy { get; set; }
        public string District { get; set; }
        public string Country { get; set; }
    }
}
