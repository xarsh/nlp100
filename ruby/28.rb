require_relative '20.rb'
require 'pp'

dict = {}

eng.scan(/^\|(.+) = (.+)$/).each do |info|
  value = info[1].gsub(/'{2,3} | '{5}'/x, '')
  value.gsub!(/(\|(.*?))+\]\]/x, ']]')
  value.gsub!(/\[\[ (.*?)\]\]/x){"#{$1}"}
  value.gsub!(/<("[^"]*"|'[^']*'|[^'">])*>/, '')
  value.gsub!(/\{\{ .+? \}\} | \[ .+? \]/x, '')
  dict[info[0]] = value
end

pp dict
