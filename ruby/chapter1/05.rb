a = "I am an NLPer"

words = a.split
chars = a.delete(' ').split('')

def n_gram(array, n)
  array.map.with_index{|item, i| item + array[i+1] rescue item}
end

puts n_gram(words, 2)
puts n_gram(chars, 2)
