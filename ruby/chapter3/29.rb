require_relative '20.rb'
require 'faraday'
require 'pp'

dict = {}

eng.scan(/^\|(.+) = (.+)$/).each do |info|
  dict[info[0]] = info
end

name = dict['国旗画像'][1].gsub(/ /, '_')
url = "https://en.wikipedia.org/w/api.php?action=query&prop=imageinfo&format=json&iiprop=url&titles=File%3A#{name}"

pp JSON.parse(Faraday.get(url).body)
