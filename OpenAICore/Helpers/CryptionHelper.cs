using System.Security.Cryptography;
using System.Text;

namespace OpenAICore.Helpers
{
    public class CryptionHelper
    {
        public static string Hash(string value)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] hashBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(value));
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    builder.Append(hashBytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }
        public static string AESEncrypt(string text, string password, int saltSize)
        {
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(text);

            using (var aesAlg = Aes.Create())
            {
                var pdb = new Rfc2898DeriveBytes(password, saltSize);
                aesAlg.Key = pdb.GetBytes(32);
                aesAlg.IV = pdb.GetBytes(16);

                using (var msEncrypt = new MemoryStream())
                {
                    using (var csEncrypt = new CryptoStream(msEncrypt, aesAlg.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        csEncrypt.Write(plainTextBytes, 0, plainTextBytes.Length);
                        csEncrypt.FlushFinalBlock();
                    }

                    byte[] cipherTextBytes = msEncrypt.ToArray();

                    return Convert.ToBase64String(cipherTextBytes);
                }
            }
        }
        public static string AESDecrypt(string text)
        {
            return text;
        }
    }
}
