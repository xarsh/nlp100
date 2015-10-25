# (?<=pat) positive bihind
# (?=pat)  positive lookahead

def lines
  File.open('./data/nlp.txt') do |file|
    file.read.gsub(/\n+/, ' ').split(/(?<=[.?!:;])\s(?=[A-Z])/m).each do |line|
      line
    end
  end
end

puts lines if $0 == __FILE__
