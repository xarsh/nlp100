require 'json'
require 'zlib'

def eng
  infile = open('./data/jawiki-country.json.gz')
  gz = Zlib::GzipReader.new(infile).map(&JSON.method(:parse))
  gz.find{|item| item['title'] == 'イギリス'}['text']
end

puts eng if $0 == __FILE__
