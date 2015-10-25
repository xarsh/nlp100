require_relative '51.rb'
require 'lingua/stemmer'


words.split.each do |word|
  puts "#{word}\t#{Lingua.stemmer(word)}"
end
