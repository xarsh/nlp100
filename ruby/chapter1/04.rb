a = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
result = {}
a.split.each.with_index(1) do |val, idx|
  case idx
  when 1, 5, 6, 7, 8, 9, 15, 16, 19
    result[val[0]] = idx
  else
    result[val[0..1]] = idx
  end
end

p result
