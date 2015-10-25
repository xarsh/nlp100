require_relative '30.rb'

ans = Hash.new(0)

mecab.each do |item|
  ans[item[:base]] += 1
end

ans.sort_by{|k, v| v}.reverse[0..20].each do |a, b|
  puts "#{a} : #{b}"
end
