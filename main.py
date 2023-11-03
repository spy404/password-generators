import random
import string

def generate_password(length):
  charset = string.ascii_letters + string.digits
  password = ''.join(random.choice(charset) for i in range(length))
  return password

print(generate_password(10))
