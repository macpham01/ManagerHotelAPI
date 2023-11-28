using ManagerHotelAPI.Models;
using System.Collections.Generic;

namespace ManagerHotelAPI.DTO
{
    public class PageRoom
    {
        public IEnumerable<Room> ListRoom { get; set; }
        public int TotalPage { get; set; }
    }
}
