# batch of notes from file i/o reading


fname = "sample.txt"
somefile = File.open(fname, "w")
somefile.puts "Hello file!"
somefile.close

# same thing happens, block implicitly closes
File.open("sample.txt", "w") { |somefile| somefile.puts "Hello file!" }

file = File.open("sample.txt", "r")
contents = file.read
puts contents

block format for read
contents = File.open("sample.txt", "r") { |file| file.read }
puts contents

# readlines vs readline methods
File.open("sample.txt").readlines.each do |line|
  puts line
end

file = File.open("sample.txt", 'r')
while !file.eof?
  line = file.readline
  puts line
end
