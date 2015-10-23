a = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
p a.delete(',.').split.map{|b| b.length}
