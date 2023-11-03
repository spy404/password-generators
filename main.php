function generatePassword($length) {
  $charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  $password = "";

  for ($i = 0; $i < $length; $i++) {
    $randomIndex = rand(0, strlen($charset) - 1);
    $password .= $charset[$randomIndex];
  }

  return $password;
}

echo generatePassword(10);
