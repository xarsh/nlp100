a = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."

def typoglycemia(str)
  str.split.map do |word|
    if word.length <= 4
      word
    else
      head, body, tail = word[0], word[1..-2], word[-1]
      "#{head}#{body.chars.shuffle.join}#{tail}"
    end
  end
end

puts typoglycemia(a).join(' ')
