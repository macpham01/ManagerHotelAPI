using AutoMapper;
using ManagerHotelAPI.DTO;
using ManagerHotelAPI.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace ManagerHotelAPI.Controllers
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class BookingsController : Controller
    {
        private readonly HotelManagerContext _context;
        private readonly UserManager<User> _userManager;
        private readonly IMapper _mapper;

        public BookingsController(HotelManagerContext context, UserManager<User> userManager, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
            _userManager = userManager;
        }

        [HttpPost]
        public async Task<IActionResult> CreateBooking(BookingDTO bookingDTO)
        {
            try
            {
                var room = await _context.Rooms.FindAsync(bookingDTO.RoomId);
                if (room == null)
                    return BadRequest(new Response
                    {
                        Status = "Error",
                        Message = "Phòng không tồn tại"
                    });

                var userExist = await _userManager.FindByEmailAsync(bookingDTO.EmailUser);
                if (userExist==null)
                    return BadRequest(new Response
                    {
                        Status = "Error",
                        Message = "Không tìm thấy khách hàng"
                    });

                var booking = _mapper.Map<Booking>(bookingDTO);
                _context.Bookings.Add(booking);
                await _context.SaveChangesAsync();
                return Ok(booking);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
