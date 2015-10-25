ans = File.open('./data/hightemp.txt') do |file|
  file.read.split("\n").length
end

puts "lines: #{ans}"
puts `wc ./data/hightemp.txt`.split.first.to_i == ans ? 'OK' : 'NG'
