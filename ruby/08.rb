def cipher(str)
  str.chars.map do |c|
    /[[:upper:]]/.match(c) ? c : 219 - c.ord
  end
end

a = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."

puts cipher(a).join(' ')
