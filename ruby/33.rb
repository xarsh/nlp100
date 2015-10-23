require_relative '30.rb'

puts mecab.select{|x| x[:pos1] == 'サ変接続'}.map{|x| x[:base]}.uniq
