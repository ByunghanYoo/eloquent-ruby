
# index

author = 'clarke'
puts author[3]
puts

# each_char

author.each_char { |c| puts c }
puts

# each_byte

author.each_byte { |b| puts b }
puts

# each_line

content = <<EOF
안녕하쎄요~
끼햫
헤헤
bye
EOF

content.each_line { |line| puts line }
