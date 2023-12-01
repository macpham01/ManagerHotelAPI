using AutoMapper;
using ManagerHotelAPI.DTO;
using ManagerHotelAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ManagerHotelAPI.Controllers
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class CommentsController : ControllerBase
    {
        private readonly HotelManagerContext _context;
        private readonly IMapper _mapper;

        public CommentsController(HotelManagerContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var comments = await _context.Comments.ToListAsync();
            return Ok(comments);
        }

        [HttpGet("get-paging")]
        public async Task<IActionResult> GetPaging(string roomId, int pageSize = 3, int pageIndex = 1)
        {
            try
            {
                if (roomId == null) return BadRequest();
                var comments = _context.Comments.Where(x=>x.RoomId == roomId );
                int totalPage = (int)Math.Ceiling((double)comments.Count() / pageSize);
                comments = comments.Skip((pageIndex - 1) * pageSize).Take(pageSize);
                var commentWithUser = comments.ToList().Join(_context.Users.ToList(), comment => comment.UserId, user => user.Id, (comment, user) =>
                {
                    comment.User = user;
                    return comment;
                });
                return Ok(new PageResult<Comment>
                {
                    ListData = commentWithUser,
                    TotalPage = totalPage
                });
            }
            catch (Exception)
            {

                throw;
            }
        }

        [HttpPost]
        public async Task<IActionResult> Create([FromBody] CommentDTO commentDTO)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var room = await _context.Rooms.FindAsync(commentDTO.RoomId);
                    if (room == null) 
                        return BadRequest("Room is not defined");
                    var user = await _context.Users.FindAsync(commentDTO.UserId);
                    if (user == null) 
                        return BadRequest("User is not defined");

                    var comment = _mapper.Map<Comment>(commentDTO);  
                    await _context.Comments.AddAsync(comment);
                    await _context.SaveChangesAsync();
                    return StatusCode(201, comment);
                }
                else return BadRequest();
            }
            catch (System.Exception)
            {

                throw;
            }

        }

        [HttpPut]
        public async Task<IActionResult> IncreaseLike([FromQuery] string commentId)
        {
            try
            {
                if (commentId == null) return BadRequest();
                var comment = await _context.Comments.FindAsync(commentId);
                if (comment == null) return BadRequest();
                comment.Like++;
                _context.Comments.Update(comment);
                await _context.SaveChangesAsync();
                return Ok();

            }
            catch (System.Exception)
            {

                throw;
            }

        }

    }
}
