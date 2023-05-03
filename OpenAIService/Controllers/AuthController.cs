using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using OpenAIService.Entities;
using OpenAIService.Helpers;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace OpenAIService.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AuthController : ControllerBase
    {
        private readonly ILogger<AuthController> _logger;
        private readonly IConfiguration _config;
        private readonly JwtHelper _jwtHelper;

        public AuthController(ILogger<AuthController> logger, IConfiguration config, JwtHelper jwtHelper)
        {
            _logger = logger;
            _config = config;
            _jwtHelper = jwtHelper;
        }

        [HttpPost("login")]
        [AllowAnonymous]
        public async Task<IActionResult> Login(LoginDto loginDto)
        {
            var user = await AuthenticateUser(loginDto);

            if (user != null)
            {
                //var tokenString = GenerateJSONWebToken(user);
                var tokenString = _jwtHelper.GenerateToken(user.Username);
                return Ok(new { Token = tokenString });
            }

            return Unauthorized();
        }

        [HttpPost("refresh")]
        [Authorize]
        public IActionResult Refresh(string refreshToken)
        {
            try
            {
                // 解析 JWT Token
                var tokenHandler = new JwtSecurityTokenHandler();
                var key = Encoding.ASCII.GetBytes(_config["Jwt:Key"]);
                var validationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = new SymmetricSecurityKey(key),
                    ValidateIssuer = true,
                    ValidIssuer = _config["Jwt:Issuer"],
                    ValidateAudience = true,
                    ValidAudience = _config["Jwt:Audience"],
                    ClockSkew = TimeSpan.Zero // 取消時鐘漂移
                };
                var claimsPrincipal = tokenHandler.ValidateToken(refreshToken, validationParameters, out var securityToken);

                // 驗證通過，簽發新的 JWT Token
                var newTokenDescriptor = new SecurityTokenDescriptor
                {
                    Subject = claimsPrincipal.Identity as ClaimsIdentity,
                    Expires = DateTime.UtcNow.AddMinutes(Convert.ToInt32(_config["Jwt:ExpiresInMinutes"])),
                    SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
                };
                var newToken = tokenHandler.CreateToken(newTokenDescriptor);
                var newJwtToken = tokenHandler.WriteToken(newToken);

                return Ok(new { Token = newJwtToken });
            }
            catch (SecurityTokenExpiredException)
            {
                // JWT Token 已經過期
                return BadRequest();
            }
        }

        private async Task<User> AuthenticateUser(LoginDto loginDto)
        {
            // 在這裡實作驗證使用者的邏輯
            // 如果使用者驗證成功，就返回一個代表使用者的物件，否則返回 null
            // 在這個範例中，我們只是簡單地使用靜態資料來模擬使用者驗證
            if (loginDto.Username == "testuser" && loginDto.Password == "testpassword")
            {
                return new User { Username = "testuser", Email = "testuser@example.com" };
            }

            return null;
        }

        private string GenerateJSONWebToken(User user)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            var claims = new[]
            {
                new Claim(JwtRegisteredClaimNames.Sub, user.Username),
                new Claim(JwtRegisteredClaimNames.Email, user.Email),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
            };

            var token = new JwtSecurityToken(
                issuer: _config["Jwt:Issuer"],
                audience: _config["Jwt:Audience"],
                claims: claims,
                expires: DateTime.Now.AddMinutes(Convert.ToDouble(_config["Jwt:ExpiresInMinutes"])),
                signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }
    }

    public class User
    {
        public string Username { get; set; }
        public string Email { get; set; }
    }

    public class LoginDto
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }
}
