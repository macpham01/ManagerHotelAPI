﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace ManagerHotelAPI.Models
{
    public partial class Room
    {
        [Required(ErrorMessage ="Đây là trường bắt buộc")]
        public string Id { get; set; } = Guid.NewGuid().ToString();

        [Required(ErrorMessage = "Đây là trường bắt buộc")]
        public string RoomName { get; set; }

        public string Price { get; set; }
        public int? Views { get; set; }
        public string Image { get; set; }
        public DateTime? BookingDate { get; set; }
        public DateTime? EndDate { get; set; }
        public int? Favorite { get; set; }
        public string Amenities { get; set; }
        public string RoomPhoneNumber { get; set; }
        public string RoomEmail { get; set; }
        public DateTime? CreatedDate { get; set; } = DateTime.UtcNow;
        public string CreatedBy { get; set; } = "Canhvd";
        public DateTime? ModifiedDate { get; set; } = DateTime.UtcNow;
        public string ModifiedBy { get; set; } = "Canhvd";

        [Required(ErrorMessage = "Đây là trường bắt buộc")]
        public string LocationId { get; set; }

        public string Tag { get; set; }
        public string Description { get; set; }
        public int? Guests { get; set; }
        public int? Bedroom { get; set; }
        public int? Bath { get; set; }
        public Location Location { get; set; }

    }
}
