require 'json'
require 'zlib'

gz = open('./data/jawiki-country.json.gz')
articles = Zlib::GzipReader.new(gz).map{|item| JSON.parse(item)}
article =  articles.find{|item| item['title'] == 'イギリス'}

puts article['text'].scan(/^\[\[Category:.*$/)
