class Array
  def n_gram(n)
    self.map.with_index{|item, i| item + self[i+1] rescue item}
  end
end

a, b = "paraparaparadise", "paragraph"
x, y = a.split('').n_gram(2), b.split('').n_gram(2)

puts <<EOF
Union: #{x | y}
Intersection: #{x & y}
Difference: #{x - y}

x contains 'se': #{x.include?('se')}
y contains 'se': #{y.include?('se')}
EOF
