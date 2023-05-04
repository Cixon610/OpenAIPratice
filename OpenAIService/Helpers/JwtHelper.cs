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

    public string GenerateToken(string userName, int expireMinutes = 0) {
      expireMinutes = expireMinutes == 0 ? _settings.ExpiresInMinutes : expireMinutes;
      var token = JwtBuilder.Create()
                      .WithAlgorithm(new HMACSHA256Algorithm())
                      .WithSecret(_settings.SignKey)
                      //.AddClaim("roles", "admin")
                      //.AddClaim("jti", Guid.NewGuid().ToString())
                      .AddClaim("iss", _settings.Issuer)
                      .AddClaim("sub", _settings.SignKey)
                      .AddClaim("exp", DateTimeOffset.UtcNow.AddMinutes(expireMinutes).ToUnixTimeSeconds())
                      //.AddClaim("nbf", DateTimeOffset.UtcNow.ToUnixTimeSeconds())
                      //.AddClaim("iat", DateTimeOffset.UtcNow.ToUnixTimeSeconds())
                      .AddClaim(ClaimTypes.Name, userName)
                      .Encode();
      return token;
    }
  }
}
