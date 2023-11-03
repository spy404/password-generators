public string GeneratePassword(int length)
{
  string charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  StringBuilder password = new StringBuilder();
  Random random = new Random();

  for (int i = 0; i < length; i++)
  {
    password.Append(charset[random.Next(charset.Length)]);
  }

  return password.ToString();
}

Console.WriteLine(GeneratePassword(10));
