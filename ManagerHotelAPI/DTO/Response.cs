using ManagerHotelAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ManagerHotelAPI.DTO
{
    public class Response
    {
        public string Status { get; set; }
        public string Message { get; set; }
        public string Token { get; set; }
        public DateTime Expiration { get; set; }
        public User User { get; set; }
    }
}
