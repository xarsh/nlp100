require_relative '20.rb'

eng.scan(/ファイル:(.*?)\|/).each do |file|
  puts file[0]
end
