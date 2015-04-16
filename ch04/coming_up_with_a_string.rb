
# literal string 표현

a_string_with_a_quote = 'Say it ain\'t so!'
puts a_string_with_a_quote

a_string_with_a_backslash = 'This is a backslash: \\'
puts a_string_with_a_backslash

double_quoted = "I have a tab: \t and a newline: \n"
puts double_quoted

single_quoted = 'I have a tab: \t and a newline: \n' # 내부적으로 한 번 더 연산을 하기 때문에 비효율적
puts single_quoted

puts "=============================="

# embed arbitrary 표현

author = "Ben Bova"
title = "Mars"
puts "#{title} is writeen by #{author}"

puts "=============================="

# single quote 와 double quote

str = "\"Stop\", she said, \"I cannot deal with the backslashes.\""
puts str

str = '"Stop", she said, "I cannot deal with the backslashes."'
puts str

str = "'Stop', she said, 'I cannot deal with the backslashes.'"
puts str

puts "=============================="

# backslash hell에서 우리를 구해줄 녀석들

str = %q{"Stop", she said, "I can't live without 's and "s."}
puts str

str = %q("Stop", she said, "I can't live without 's and "s.")
puts str

str = %q<"Stop", she said, "I can't live without 's and "s.">
puts str

str = %q["Stop", she said, "I can't live without 's and "s."]
puts str

str = %q$"Stop", she said, "I can't live without 's and "s."$
puts str

str = %Q<The time in now #{Time.now}> # embed arbitrary 표현을 가능하게 해준다
puts str

str = %q<The time in now #{Time.now}>
puts str

puts "=============================="

# multi-line

a_multiline_string = "a multi-line
string"
puts a_multiline_string

another_one = %q{another multi-line
string}
puts another_one

yet_another = %Q{another multi-line string with \
no newline}
puts yet_another

heres_one = <<EOF
This is the beginning of my here document.
And this is \
the end.
EOF
puts heres_one
