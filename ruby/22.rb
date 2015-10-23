require_relative '20.rb'

eng.scan(/^(\[\[Category:)(.*)(\]\])$/).each do |cate|
  puts cate[1]
end
