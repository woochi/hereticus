express = require('express')
config = require('./config/config')
app = express()
db = require('./config/db')(config)
require('./config/express')(app, db, config)
app.listen config.port
