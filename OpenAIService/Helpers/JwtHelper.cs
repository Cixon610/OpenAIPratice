using JWT.Algorithms;
using JWT.Builder;
using Microsoft.Extensions.Options;
using OpenAIService.Models;
using System.Security.Claims;

namespace OpenAIService.Helpers 
{

  public class JwtHelper {
    private readonly JwtSettingsOptions _settings;

    public JwtHelper(IOptionsMonitor<JwtSettingsOptions> settings) 
    {
      _settings = settings.CurrentValue;
    }

    public string GenerateToken(string userName, int expireMinutes = 120) {
      var issuer = _settings.Issuer;
      var signKey = _settings.SignKey;

      var token = JwtBuilder.Create()
                      .WithAlgorithm(new HMACSHA256Algorithm())
                      .WithSecret(signKey)
                      .AddClaim("roles", "admin")
                      .AddClaim("jti", Guid.NewGuid().ToString())
                      .AddClaim("iss", issuer)
                      .AddClaim("sub", userName)
                      .AddClaim("exp", DateTimeOffset.UtcNow.AddMinutes(expireMinutes).ToUnixTimeSeconds())
                      .AddClaim("nbf", DateTimeOffset.UtcNow.ToUnixTimeSeconds())
                      .AddClaim("iat", DateTimeOffset.UtcNow.ToUnixTimeSeconds())
                      .AddClaim(ClaimTypes.Name, userName)
                      .Encode();
      return token;
    }
  }
}
