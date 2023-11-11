using System;
using System.Collections.Generic;

#nullable disable

namespace ManagerHotelAPI.Models
{
    public partial class Location
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public string LocationName { get; set; }
        public int? Views { get; set; }
        public string Decription { get; set; }
        public DateTime? CreatedDate { get; set; } = DateTime.UtcNow;
        public string CreatedBy { get; set; } = "CanhVD";
        public DateTime? ModifiedDate { get; set; } = DateTime.UtcNow;
        public string ModifiedBy { get; set; } = "CanhVD";
        public string District { get; set; }
        public string Country { get; set; }
    }
}
