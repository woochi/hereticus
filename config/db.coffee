config = require("./config.coffee")
mongoose = require("mongoose")

mongoose.connect("mongodb://#{config.db.host}:#{config.db.port}")
db = mongoose.connection
db.on "error", console.error.bind(console, "connection error:")
db.on "open", console.log.bind(console, "connected to mongo")

module.exports = (config) ->
  mongoose.connection
