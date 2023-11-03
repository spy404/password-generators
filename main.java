public static String generatePassword(int length) {
  String charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  StringBuilder password = new StringBuilder();
  Random random = new Random();

  for (int i = 0; i < length; i++) {
    password.append(charset.charAt(random.nextInt(charset.length())));
  }

  return password.toString();
}

System.out.println(generatePassword(10));
