ans = File.open('./data/hightemp.txt') do |file|
  file.read.split("\n")[-ARGV[0].to_i..-1].join("\n") + "\n"
end

puts ans

puts `tail -n #{ARGV[0]} ./data/hightemp.txt` == ans ? 'OK' : 'NG'
