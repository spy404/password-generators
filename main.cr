def generate_password(length = 10)
  chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
  password = ""

  length.times do
    random_index = Random.rand(chars.size)
    password << chars[random_index]
  end

  password
end

password = generate_password
puts "#{password}"
