using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ManagerHotelAPI.DTO
{
    public class RegisterUser
    {
        [Required(ErrorMessage ="FullName is required!")]
        public string FullName { get; set; }

        [EmailAddress]
        [Required(ErrorMessage = "Email is required!")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Password is required!")]
        public string Password { get; set; }

        public string PhoneNumber { get; set; }
        public string Role { get; set; }
    }
}
