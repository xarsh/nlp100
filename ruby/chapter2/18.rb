ans = File.open('./data/hightemp.txt') do |file|
  file.read.split("\n").sort_by{|item| -item.split[2].to_f}
end

ans = ans.join("\n") + "\n"

puts ans
puts
puts `cat ./data/hightemp.txt | sort -r -k 3,3`
