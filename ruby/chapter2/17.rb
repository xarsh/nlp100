ans = []

File.open('./data/hightemp.txt') do |file|
  file.each_line do |line|
    ans |= [line.split[0]]
  end
end

ans = "#{ans.sort.join("\n")}\n"

puts ans
puts `sort ./data/col1.txt | uniq` == ans ? 'OK' : 'NG'
