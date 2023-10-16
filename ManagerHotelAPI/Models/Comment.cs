using System;
using System.Collections.Generic;

#nullable disable

namespace ManagerHotelAPI.Models
{
    public partial class Comment
    {
        public string Id { get; set; }
        public string RoomId { get; set; }
        public string UserId { get; set; }
        public string Content { get; set; }
        public DateTime? CreateDate { get; set; }
        public bool? Active { get; set; }
    }
}
