require_relative '50.rb'

def words
  result = ''
  lines.map do |line|
    line.split(' ').each do |word|
      result += "#{word.gsub(/[.,!?:;]/, '').downcase}\n"
    end
    result += "\n"
  end

  result
end

puts words if $0 == __FILE__
