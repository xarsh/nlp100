ans = File.open('./data/hightemp.txt') do |file|
  file.read.gsub(/\t/, ' ')
end

puts ans
puts `cat ./data/hightemp.txt | sed 's/\t/ /g'` == ans ? 'OK' : 'NG'
