import 'dart:math';

String generatePassword({int length = 10}) {
  final random = Random();
  final chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+{}[]';
  final password = StringBuffer();

  for (var i = 0; i < length; i++) {
    final randomIndex = random.nextInt(chars.length);
    password.write(chars[randomIndex]);
  }

  return password.toString();
}

void main() {
  final password = generatePassword(); 
  print('$password');
}
