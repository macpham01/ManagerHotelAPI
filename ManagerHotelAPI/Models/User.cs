using Microsoft.AspNetCore.Identity;

namespace ManagerHotelAPI.Models
{
    public class User : IdentityUser
    {
        public string FullName { get; set; }
    }
}
