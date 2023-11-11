using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ManagerHotelAPI.Models;
using ManagerHotelAPI.DTO;
using AutoMapper;

namespace ManagerHotelAPI.Controllers
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class LocationsController : ControllerBase
    {
        private readonly HotelManagerContext _context;
        private readonly IMapper _mapper;

        public LocationsController(HotelManagerContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        // GET: api/Locations
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Location>>> GetLocations()
        {
            return await _context.Locations.ToListAsync();
        }

        // GET: api/Locations/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Location>> GetLocation(string id)
        {
            var location = await _context.Locations.FindAsync(id);

            if (location == null)
            {
                return NotFound();
            }

            return location;
        }

        // GET: api/Locations/5
        [HttpGet("getName")]
        public async Task<ActionResult<List<Location>>> GetLocationByName([FromQuery] string name)
        {
            var locations = await _context.Locations.Where(x => x.LocationName.Contains(name)).ToListAsync();

            if (locations.Any())
            {
                return locations;
            }
            return NoContent();

        }

        // PUT: api/Locations/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutLocation(string id, Location location)
        {
            if (id != location.Id)
            {
                return BadRequest();
            }

            _context.Entry(location).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LocationExists(id))
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

        // POST: api/Locations
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Location>> PostLocation(LocationDTO locationDTO)
        {
            try
            {
                var location = _mapper.Map<Location>(locationDTO);
                _context.Locations.Add(location);
                await _context.SaveChangesAsync();
                return StatusCode(201, location);
            }
            catch (Exception ex)
            {
                throw;
            }
            
            
        }

        // DELETE: api/Locations/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteLocation(string id)
        {
            var location = await _context.Locations.FindAsync(id);
            if (location == null)
            {
                return NotFound();
            }

            _context.Locations.Remove(location);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool LocationExists(string id)
        {
            return _context.Locations.Any(e => e.Id == id);
        }
    }
}
