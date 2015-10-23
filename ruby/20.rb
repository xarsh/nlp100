require 'json'
require 'zlib'

infile = open('./data/jawiki-country.json.gz')
gz = Zlib::GzipReader.new(infile)
article =  gz.find{|article| JSON.parse(article)['title'] == 'イギリス'}

puts JSON.parse(article)['text']
