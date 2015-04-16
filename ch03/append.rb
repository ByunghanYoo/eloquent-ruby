
# hash가 함수인자일 때

def echo( hash = {} )
  puts ":hello => #{hash[:hello]}"
  puts ":name => #{hash[:name]}"
  puts ":age => #{hash[:age]}"
end

echo( :hello => '안녕~ 반가웡', :age => 24 )
puts

echo hello: '안녕~ 반가웡', age: 24
puts

echo hello: '안녕~ 반가웡', age: 24, name: "병아리"
puts

# 축약 표현

=begin
 
 "&"는 블럭의 축약 표현
 "&:+"  >> 블럭을 대신하는 표현
 ":+"   >> 심볼
  
=end

puts (1..10).inject(0) { |a, n| a + n }
puts (1..10).inject( 0, &:+ )
puts (1..10).inject( &:+ )
puts (1..10).inject( :+ )
puts (1..10).inject( :- )
puts (1..10).inject( :* )
puts (1..10).inject( :% )

p ['as', 'sd'].map( &:upcase )
