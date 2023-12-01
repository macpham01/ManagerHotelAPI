using ManagerHotelAPI.Models;
using System.Collections.Generic;

namespace ManagerHotelAPI.DTO
{
    public class PageResult<T>
    {
        public IEnumerable<T> ListData { get; set; }
        public int TotalPage { get; set; }
    }
}
