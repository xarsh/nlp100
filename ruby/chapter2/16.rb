ans = File.open('./data/hightemp.txt') do |file|
  file.read.split("\n").each_slice(ARGV[0].to_i).to_a.map{|i| i.join("\n")}.join("\n\n")
end

puts ans
