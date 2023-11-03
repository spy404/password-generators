def generate_password(length)
  charset = Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')
  Array.new(length) { charset.sample }.join
end

puts generate_password(10)
