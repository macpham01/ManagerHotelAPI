using Microsoft.AspNetCore.Http;

namespace ManagerHotelAPI.DTO
{
    public class EditUser
    {
        public string FullName { get; set; }
        public string PhoneNumber { get; set; }
        public IFormFile FileAvatar { get; set; }
        public string Avatar { get; set; }
        public string Note { get; set; }
        public string Email { get; set; }
    }
}
