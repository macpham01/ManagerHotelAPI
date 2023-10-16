using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ManagerHotelAPI.Models;
using AutoMapper;
using ManagerHotelAPI.DTO;
using Microsoft.AspNetCore.Authorization;

namespace ManagerHotelAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RoomsController : ControllerBase
    {
        private readonly HotelManagerContext _context;
        private readonly IMapper _mapper;

        public RoomsController(HotelManagerContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        // GET: api/Rooms
        [Authorize(Roles = "User, Admin, Boss")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Room>>> GetRooms()
        {
            //var result = _context.Rooms.Join(_context.Locations, r => r.LocationId, l => l.Id, (r, l)=>new {r, l});
            return await _context.Rooms.ToListAsync();
        }

        // GET: api/Rooms/5
        [HttpGet("{id}")]
        public async Task<ActionResult<RoomDTO>> GetRoom(string id)
        {
            var room = await _context.Rooms.FindAsync(id);

            if (room != null)
            {
                var locationByRoom = await _context.Locations.FindAsync(room.LocationId);
                var roomDTO = _mapper.Map<RoomDTO>(room);
                roomDTO.LocationName = locationByRoom?.LocationName;
                roomDTO.Country = locationByRoom?.Country;
                roomDTO.District = locationByRoom?.District;
                return roomDTO;
            }

                return NotFound();
        }

        // PUT: api/Rooms/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRoom(string id, Room room)
        {
            if (id != room.Id)
            {
                return BadRequest();
            }

            _context.Entry(room).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RoomExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Rooms
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Room>> PostRoom(Room room)
        {
            _context.Rooms.Add(room);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (RoomExists(room.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetRoom", new { id = room.Id }, room);
        }

        [HttpPut("increaseView/{id}")]
        public async Task<ActionResult<Room>> PostRoom(string id)
        {

            var room = await _context.Rooms.FindAsync(id);

            if (room == null)
            {
                return NotFound();
            }
            room.Views++;
            await _context.SaveChangesAsync();
            return Ok();
        }

        // DELETE: api/Rooms/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteRoom(string id)
        {
            var room = await _context.Rooms.FindAsync(id);
            if (room == null)
            {
                return NotFound();
            }
            _context.Rooms.Remove(room);

            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool RoomExists(string id)
        {
            return _context.Rooms.Any(e => e.Id == id);
        }
    }
}
