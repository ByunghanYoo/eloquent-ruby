
# 배열 요소의 삭제

array = [ 0, -10, -9, 5, 9 ]
array.each_index { |i| array.delete_at(i) if array[i] < 0 }
p array

array = [ 0, -10, -9, 5, 9 ]
array.delete_if { |v| v < 0 }
p array

#  배열 요소의 삽입

array = []

array.push 2
p array

array << 4
p array

array[2] = 5
p array

array[10] = 6 # 빈 부분은 nil이 들어간다
p array

# set

word_is_there = {}
words = [ "a", "b", nil, "c", "a" ]
words.each { |word| word_is_there[word] = true }
p word_is_there

unique = []
words.each { |word| unique << word unless unique.include? word }
p unique

p words.uniq

require 'set'

word_set = Set.new( words )
p word_set

