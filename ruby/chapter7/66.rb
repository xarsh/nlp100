require 'mongo'

Mongo::Logger.logger.level = ::Logger::FATAL

db = Mongo::Client.new(['127.0.0.1:27017'], database: 'nlp100').database[:artists]

puts db.find({area: 'Japan'}).count
