using System.ComponentModel.DataAnnotations;
using System;

namespace ManagerHotelAPI.Models
{
    public class Booking
    {
        [Required(ErrorMessage = "Đây là trường bắt buộc")]
        public string Id { get; set; } = Guid.NewGuid().ToString();
        [Required(ErrorMessage = "Đây là trường bắt buộc")]
        public string RoomId { get; set; }
        [Required(ErrorMessage = "Đây là trường bắt buộc")]
        public string EmailUser { get; set; }
        public DateTime? BookingDate { get; set; }
        public DateTime? EndDate { get; set; }
        public DateTime? CreatedDate { get; set; } = DateTime.UtcNow;
        public string CreatedBy { get; set; } = "Canhvd";
        public DateTime? ModifiedDate { get; set; } = DateTime.UtcNow;
        public string ModifiedBy { get; set; } = "Canhvd";
        public string Note { get; set; }
    }
}
