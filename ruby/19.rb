ans = Hash.new(0)

File.open('./data/hightemp.txt') do |file|
  file.read.split("\n").each do |item|
    ans[item.split[0]] += 1
  end
end

ans.sort_by(&:last).reverse.each do |item|
  puts item[0]
end
puts
puts `cut -f 1 ./data/hightemp.txt | sort | uniq -c | sort -r`
