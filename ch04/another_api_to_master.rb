
# lstrip, rstrip

puts %Q<text#{"  hello  ".strip}text>
puts %Q<text#{"  hello  ".lstrip}text>
puts %Q<text#{"  hello  ".rstrip}text>

puts "=============================="

# chomp, chop

# 가장 마지막에 있는 개행문자를 하나 제거한다
p "It was a dark and stormy night\n\n".chomp

# 가장 마지막에 있는 문자를 하나 제거한다
p "It was a dark and stormy night.".chop

puts "=============================="

# upcase, downcase, swapcase

puts "Upcase".upcase
puts "Downcase".downcase
puts "Swapcase".swapcase
puts "한글ㄱ123@!#".swapcase # 영문자가 아닌 경우?

puts "=============================="

# sub, gsub

puts 'yes yes'.sub( 'yes', 'no' ) # 처음 나오는 문자열 대체
puts 'yes yes'.gsub( 'yes', 'no' ) # 모든 문자열 대체

puts "=============================="

# split

p 'It was a dark and stormy night'.split
p 'Bill:Shakespeare:Playwright:Globe'.split( ':' )

puts "=============================="

# !

title = 'It was a dark and stormy night'

title.sub!( 'dark', 'bright' )
puts title

title.sub!( 'stormy', 'clear' )
puts title

title = 

puts "=============================="

# index

puts "It was a dark and stormy night".index( "dark" ).to_s
puts "It was a dark and stormy night".index( "a" ).to_s
puts "가ㅏ abc 123".index( "1" ).to_s # 
