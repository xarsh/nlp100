require_relative '20.rb'

dict = {}

eng.scan(/^\|(.+) = (.+)$/).each do |info|
  dict[info[0]] = info[1]
end


p dict
