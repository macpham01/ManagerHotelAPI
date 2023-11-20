using System.ComponentModel.DataAnnotations;

namespace ManagerHotelAPI.DTO
{
    public class ChangePassword
    {
        [Required]
        public string Email { get; set; }
        [Required]
        public string CurrentPassword { get; set; }
        [Required]
        public string NewPassword { get; set; }
    }
}
