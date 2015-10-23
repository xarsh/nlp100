require_relative '20.rb'

eng.scan(/^(=+)(.*?)(=+)$/).each do |sec|
  puts "#{sec[0].length - 1} : #{sec[1]}"
end
