ans = ''

col1 = File.open('./data/col1.txt') do |file|
  file.read.split
end

col2 = File.open('./data/col2.txt') do |file|
  file.read.split
end

ans = col1.zip(col2).map{|item| "#{item[0]}\t#{item[1]}\n"}.join
File.open('./data/13.txt', 'wb'){|f| f.write(ans)}

puts ans
puts `paste ./data/col1.txt ./data/col2.txt` == ans ? 'OK' : 'NG'
