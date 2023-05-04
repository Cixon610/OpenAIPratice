using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using OpenAIService.Entities;
using OpenAIService.Helpers;
using OpenAIService.Models.Request;
using OpenAIService.Models.Response;
using OpenAIService.ViewModels;
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
        private readonly OpenAIContext _openAIContext;
        private readonly IMapper _mapper;

        public AuthController(ILogger<AuthController> logger, IConfiguration config, JwtHelper jwtHelper, OpenAIContext openAIContext, IMapper mapper)
        {
            _logger = logger;
            _config = config;
            _jwtHelper = jwtHelper;
            _openAIContext = openAIContext;
            _mapper = mapper;
        }

        [HttpPost("login")]
        [AllowAnonymous]
        public async Task<IActionResult> Login(AuthenticateUserReq req)
        {
            var user = await AuthenticateUser(req);
            if (user == null)
                return Unauthorized();

            var tokenString = _jwtHelper.GenerateToken(user.Account);
            return Response<string>.Ok(tokenString);
        }

        [HttpPost("refresh")]
        [Authorize]
        public IActionResult Refresh(string refreshToken)
        {
            try
            {
                // 解析 JWT Token
                var tokenHandler = new JwtSecurityTokenHandler();
                var key = Encoding.ASCII.GetBytes(_config["JwtSettings:SignKey"]);
                var validationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = new SymmetricSecurityKey(key),
                    ValidateIssuer = true,
                    ValidIssuer = _config["JwtSettings:Issuer"],
                    ValidateAudience = false,
                    ValidateLifetime = true,
                    ClockSkew = TimeSpan.Zero // 取消時鐘漂移
                };
                var claimsPrincipal = tokenHandler.ValidateToken(refreshToken, validationParameters, out var securityToken);

                // 驗證通過，簽發新的 JWT Token
                var newTokenDescriptor = new SecurityTokenDescriptor
                {
                    Subject = claimsPrincipal.Identity as ClaimsIdentity,
                    Expires = DateTime.UtcNow.AddMinutes(Convert.ToInt32(_config["JwtSettings:ExpiresInMinutes"])),
                    SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
                };
                var newToken = tokenHandler.CreateToken(newTokenDescriptor);
                var newJwtToken = tokenHandler.WriteToken(newToken);

                return Response<string>.Ok(newJwtToken);
            }
            catch (SecurityTokenExpiredException)
            {
                // JWT Token 已經過期
                return Response<string>.BadRequest("JWT Expired");
            }
        }

        private async Task<UserVM> AuthenticateUser(AuthenticateUserReq req)
        {
            var userInfo = _openAIContext.User.FirstOrDefault(x => x.Account == req.Account);
            _ = userInfo ?? throw new Exception($"User {req.Account} not found");

            var password = CryptionHelper.Hash(req.Password);
            if (userInfo.Password == password)
                return _mapper.Map<UserVM>(userInfo);

            return null;
        }
    }
}
