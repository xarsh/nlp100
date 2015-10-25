require 'pp'
require_relative '20.rb'

dict = {}

eng.scan(/^\|(.+) = (.+)$/).each do |info|
  value = info[1].gsub(/'{2,3} | '{5}'/x, '')
  value.gsub!(/\|(.*?)\]\]/x, ']]')
  value.gsub!(/\[\[ (.*?)\]\]/x){"#{$1}"}
  dict[info[0]] = value
end

pp dict
