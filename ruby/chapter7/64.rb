require 'oj'
require 'zlib'
require 'mongo'

Mongo::Logger.logger.level = ::Logger::FATAL

infile = open('./data/artist.json.gz')
data = Zlib::GzipReader.new(infile).lazy.map(&Oj.method(:load))

db = Mongo::Client.new(['127.0.0.1:27017'], database: 'nlp100').database[:artists]
db.drop

db.indexes.create_many([
  {key: {'name': 1}},
  {key: {'aliases.name': 1}},
  {key: {'tags.value': 1}},
  {key: {'rating.value': 1}}
])

db.insert_many(data)
