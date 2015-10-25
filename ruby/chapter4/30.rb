def mecab
  result = []

  File.open('./data/neko.txt.mecab') do |file|
    file.each_line do |line|
      next if line =~ /^EOS | ^[[:blank]] | ^——/x
      el = line.split(/\t|,/)
      result << {surface: el[0], base: el[7], pos: el[1], pos1: el[2]}
    end
  end

  result
end
