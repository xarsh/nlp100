require_relative '30.rb'

ans = Hash.new(0)

mecab.each do |item|
  ans[item[:base]] += 1
end
