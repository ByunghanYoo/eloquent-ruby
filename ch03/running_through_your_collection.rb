
# index를 기반으로 배열을 순회

words = %w{ Mary had a little lamb }

for i in 0..words.size
  puts words[i]
end

# each 메서드를 사용해 배열을 순회

words.each { |word| puts word }

# each 메서드를 사용해 해시을 순회

movie = { title: '2001', genre: 'sci fi', rating: 10 }
movie.each { |entry| p entry }
movie.each { |name, value| puts "#{name} => #{value}" }

# 배열의 index 찾기

def index_for( word ) # 직접 구현
  i = 0
  words = %w{ Mary had a little lamb }
  words.each do |this_word|
    return i if word == this_word
    i += 1
  end
  nil
end

p index_for 'had'

def index_for2( word ) # find_index API 사용
  words = %w{ Mary had a little lamb }
  words.find_index { |this_word| word == this_word }
end

p index_for2 'little'

# map

p words.map { |word| word.size }
p words.map { |word| word.downcase }

# inject

def avg_word_length( words )
  total = 0.0
  words.each { |word| total += word.size }
  total / words.size
end

puts avg_word_length words

def avg_word_length2( words )
  total = words.inject(0.0) { |result, word| word.size + result }
  total / words.size
end

puts avg_word_length2 words

def sum( a, b )
  # (a..b).inject(0) { |r, v| r += v }
  (a..b).inject(:+)
end

puts sum(1, 10)
