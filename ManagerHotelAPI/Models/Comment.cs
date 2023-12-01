using System;
using System.Collections.Generic;

#nullable disable

namespace ManagerHotelAPI.Models
{
    public partial class Comment
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public string RoomId { get; set; }
        public string UserId { get; set; }
        public string Content { get; set; }
        public DateTime? CreateDate { get; set; } = DateTime.UtcNow ;
        public bool? Active { get; set; } = true;
        public int? Rating { get; set; }

        public int Like { get; set; }

        public User User { get; set; }
    }
}
