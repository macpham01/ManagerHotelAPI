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
    [Route("api/v1/[controller]")]
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
        [HttpGet]
        public ActionResult<IEnumerable<Room>> GetRooms(bool isActive = true)
        {
            var listRoomWithLocation = _context.Rooms.Where(r => r.IsActive == isActive).ToList().Join(_context.Locations.ToList(), room => room.LocationId, location => location.Id, (room, location) =>
            {
                room.Location = location;
                return room;
            });
            return Ok(listRoomWithLocation);
        }

        // GET: api/Rooms/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Room>> GetRoom(string id)
        {
            var room = await _context.Rooms.FindAsync(id);
            if (room != null)
            {
                var location = await _context.Locations.FindAsync(room.LocationId);
                room.Location = location;
                return room;
            }
            return NoContent();
        }

        // GET: api/Rooms??locationId
        [HttpGet("search")]
        public async Task<ActionResult<Room>> GetRoomByLocationId([FromQuery] string locationId, [FromQuery] int pageIndex = 1, [FromQuery] int pageSize = 2)
        {
            try
            {
                if (locationId != null)
                {
                    var rooms =  _context.Rooms.Where(r => r.LocationId == locationId);
                    int totalPage = (int)Math.Ceiling((double)rooms.Count() / pageSize);
                    rooms = rooms.Skip((pageIndex-1) * pageSize).Take(pageSize);
                    var listRoomWithLocation = rooms.ToList().Join(_context.Locations.ToList(), room => room.LocationId, location => location.Id, (room, location) =>
                    {
                        room.Location = location;
                        return room;
                    });
                    return Ok(new PageResult<Room>
                    {
                        ListData = listRoomWithLocation,
                        TotalPage = totalPage
                    });
                }
                return NoContent();
            }
            catch (Exception)
            {
                return BadRequest();
                throw;
            }
        }

        // PUT: api/Rooms/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRoom(string id, RoomDTO roomDTO)
        {
            try
            {
                var room = await _context.Rooms.FindAsync(id);
                if (room == null)
                {
                    return BadRequest();
                }
                _mapper.Map(roomDTO, room);
                _context.Rooms.Update(room);
                await _context.SaveChangesAsync();
                return Ok();
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        // POST: api/Rooms
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Room>> PostRoom(RoomDTO roomDTO)
        {
            
            try
            {
                var room = _mapper.Map<Room>(roomDTO);
                _context.Rooms.Add(room);
                await _context.SaveChangesAsync();
                return CreatedAtAction("GetRoom", new { id = room.Id }, room);
            }
            catch (Exception ex)
            {
                throw;
            }
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
        [Authorize(Roles = "Admin")]
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
