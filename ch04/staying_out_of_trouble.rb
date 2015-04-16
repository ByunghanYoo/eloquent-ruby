
# ruby의 string은 변할 수 있다. (mutable)

first_name = 'Karen'
given_name = first_name

first_name[0] = 'D'
puts "#{first_name} / #{given_name}"

first_name.upcase!
puts "#{first_name} / #{given_name}"

puts first_name[first_name.size - 1]
puts first_name[-1]

puts first_name[2..4]
puts first_name[2...4]
