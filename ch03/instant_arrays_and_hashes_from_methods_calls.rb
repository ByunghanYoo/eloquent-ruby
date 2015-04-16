
# 함수 인자

def load_font( name, size = 12 )
  puts "load_font( #{name}, #{size} )"
end

load_font( "궁서" );
load_font( "궁서체", 10 );

# 가변 인자, 배열로 들어간다.

def echo_all( *args )
  args.each { |arg| puts arg }
end

echo_all( 1, "ㅎㅎ", 5, 1 ) # 들어가는 인자의 타입이 뒤죽박죽 섞여있는 경우 어떻게 해야하나?
echo_all( "안녕", "ㅋㅋ", "반가워~" )

def echo_at_least_two( first_arg, *middle_args, last_arg )
  puts "The first argument is #{first_arg}"
  middle_args.each { |arg| puts "A middle argument is #{arg}" }
  puts "The last argument is #{last_arg}"
end

# echo_at_least_two( "a" )
echo_at_least_two( "a", "z" )
echo_at_least_two( "a", "b", "z" )
echo_at_least_two( "a", "b", "c", "z" )

# '*'를 이용하면 배열인자를 받을 때 좀 더 안심(?)할 수 있다 

class Document
  def initialize
    @author = ""
  end

  def add_authors( names )
    @author += " #{names.join(' ')}"
  end

  def add_authors2( *names )
    @author += " #{names.join(' ')}"
  end

  def print
    puts @author
  end
end

doc = Document.new
doc.add_authors( %w{ Strunk White } )
doc.print

doc = Document.new
doc.add_authors2( 'Strunk2', 'White2' )
doc.print

# hash를 인자로 넘겨주는 방법

def load_font( specification_hash )
  puts specification_hash
end

load_font( { :name => 'times roman', :size => 12 } )
load_font( :name => 'times roman', :size => 12 )
load_font :name => 'times roman', :size => 12
load_font name: 'times roman', size: 12







