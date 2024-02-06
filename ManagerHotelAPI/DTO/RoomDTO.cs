using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ManagerHotelAPI.DTO
{
    public class RoomDTO
    {
        public string RoomName { get; set; }
        public string Price { get; set; }
        public int? Views { get; set; }
        public string Image { get; set; }
        public int? Favorite { get; set; }
        public string Amenities { get; set; }
        public string RoomPhoneNumber { get; set; }
        public string RoomEmail { get; set; }
        public string LocationId { get; set; }
        public string Tag { get; set; }
        public string Description { get; set; }
        public int? Bedroom { get; set; }
        public int? Bath { get; set; }
        public int? Bed { get; set; }
    }
}
