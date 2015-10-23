require_relative '30.rb'

mecab.each_cons(3) do |a, b, c|
  next unless a[:pos] == '名詞'
  next unless b[:surface] == 'の'
  next unless c[:pos] == '名詞'
  puts "#{a[:base]}の#{c[:base]}"
end
