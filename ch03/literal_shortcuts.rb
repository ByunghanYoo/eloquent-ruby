
# 다음과 같은 방법으로 배열(array)로 만들 수 있다.

poem_words = [ 'twinkle', 'little', 'star', 'how', 'I', 'wonder' ]
puts poem_words

puts

poem_words = %w{ twinkle little star how I wonder }
puts poem_words

puts

# 다음과 같은 방법으로 해시(hash)로 만들 수 있다.

freq = { "I" => 1, "don't" => 1, "like" => 1, "spam" => 963 }
puts freq # string key와 로켓으로 만드는 방법
puts freq["spam"]

freq = { :I => 1, :don_t => 1, :like => 1, :spam => 963 }
puts freq # symbol key와 로켓으로 만드는 방법

freq = { i: 1, don_t: 1, like: 1, spam: 963 }
puts freq # 로켓 없이 만드는 방법
puts freq[:spam]