col1, col2 = '', ''

File.open('./data/hightemp.txt') do |file|
  file.each_line do |line|
    col1 += "#{line.split[0]}\n"
    col2 += "#{line.split[1]}\n"
  end
end

puts col1
puts `cat ./data/hightemp.txt | cut -f1` == col1 ? 'OK' : 'NG'
File.open('./data/col1.txt', 'wb'){|f| f.write(col1)}

puts col2
puts `cat ./data/hightemp.txt | cut -f2` == col2 ? 'OK' : 'NG'
File.open('./data/col2.txt', 'wb'){|f| f.write(col2)}
