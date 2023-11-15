using ManagerHotelAPI.DTO;
using ManagerHotelAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace ManagerHotelAPI.Controllers
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class AuthenticationsController : ControllerBase
    {
        private readonly UserManager<User> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly IConfiguration _configuration;

        public AuthenticationsController(UserManager<User> userManager, RoleManager<IdentityRole> roleManager, IConfiguration configuration)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _configuration = configuration;
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody] RegisterUser registerUser)
        {
            try
            {
                // Check User Exist
                var userExist = await _userManager.FindByEmailAsync(registerUser.Email);
                if (userExist != null)
                {
                    return StatusCode(StatusCodes.Status403Forbidden, new Response
                    {
                        Status = "Error",
                        Message = "Tài khoản đã tồn tại"
                    });
                }

                if (registerUser.Role == null) return BadRequest();

                // Add the User in the database
                User user = new()
                {
                    FullName = registerUser.FullName,
                    Email = registerUser.Email,
                    SecurityStamp = Guid.NewGuid().ToString(),
                    UserName = registerUser.Email,
                    PhoneNumber = registerUser.PhoneNumber,
                };
                if (await _roleManager.RoleExistsAsync(registerUser.Role))
                {
                    var result = await _userManager.CreateAsync(user, registerUser.Password);
                    if (!result.Succeeded)
                    {
                        return StatusCode(StatusCodes.Status500InternalServerError, new Response
                        {
                            Status = "Error",
                            Message = "Mật khẩu phải bao gồm 1 chữ hoa, 1 ký tự đặc biệt và 1 chữ số"
                        });
                    }

                    // Add role to the user...
                    await _userManager.AddToRoleAsync(user, registerUser.Role);
                    return StatusCode(StatusCodes.Status201Created, new Response
                    {
                        Status = "Success",
                        Message = "Tạo tài khoản thành công",
                        User = user
                    });

                }
                else
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response
                    {
                        Status = "Error",
                        Message = "Quyền này không có trong DB"
                    });
                }
            }
            catch (Exception ex)
            {
                throw;
            }

        }


        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] LoginUser loginUser)
        {
            try
            {
                var user = await _userManager.FindByEmailAsync(loginUser.Email);
                if (user != null && await _userManager.CheckPasswordAsync(user, loginUser.Password))
                {
                    var authClaims = new List<Claim>
                    {
                        new Claim(ClaimTypes.Name, user.UserName),
                        new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                        new Claim(JwtRegisteredClaimNames.Aud, _configuration["JwtBearerTokenSettings:Audience"]),
                        new Claim(JwtRegisteredClaimNames.Iss, _configuration["JwtBearerTokenSettings:Issuer"])
                    };
                    var userRoles = await _userManager.GetRolesAsync(user);
                    foreach (var role in userRoles)
                    {
                        authClaims.Add(new Claim(ClaimTypes.Role, role));
                    }

                    var jwtToken = GetToken(authClaims);
                    return Ok(new Response
                    {
                        Status = "Success",
                        Message = "Đăng nhập thành công",
                        Token = new JwtSecurityTokenHandler().WriteToken(jwtToken),
                        Expiration = jwtToken.ValidTo,
                        User = user
                    });
                }
                //return Unauthorized();
                return StatusCode(StatusCodes.Status500InternalServerError, new Response
                {
                    Status = "Error",
                    Message = "Đăng nhập không thành công"
                });
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        private JwtSecurityToken GetToken(List<Claim> authClaims)
        {
            try
            {
                var authSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JwtBearerTokenSettings:SecretKey"]));

                var token = new JwtSecurityToken(
                    issuer: _configuration["JwtBearerTokenSettings:Issuer"],
                    audience: _configuration["JwtBearerTokenSettings:Audience"],
                    expires: DateTime.UtcNow.AddHours(1),
                    claims: authClaims,
                    signingCredentials: new SigningCredentials(authSigningKey, SecurityAlgorithms.HmacSha256)
                    );

                return token;
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
