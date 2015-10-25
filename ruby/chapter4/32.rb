require_relative '30.rb'

puts mecab.select{|x| x[:pos] == '動詞'}.map{|x| x[:base]}.uniq
