namespace OpenAIData.Models
{
    public class JwtSettingsOptions
    {
        public string Issuer { get; set; } = "";
        public string SignKey { get; set; } = "";
        public int ExpiresInMinutes { get; set; }
    }
}
