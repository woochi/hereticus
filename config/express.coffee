express = require('express')
glob = require('glob')
favicon = require('serve-favicon')
logger = require('morgan')
cookieParser = require('cookie-parser')
bodyParser = require('body-parser')
compress = require('compression')
methodOverride = require('method-override')
cors = require("cors")

module.exports = (app, db, config) ->
  app.set 'views', config.root + '/app/views'
  app.set 'view engine', 'jade'
  app.use logger('dev')
  app.use bodyParser.json()
  app.use bodyParser.urlencoded(extended: true)
  app.use cookieParser()
  app.use compress()
  app.use express.static(config.root + '/public')
  app.use methodOverride()
  app.use cors()

  models = glob.sync(config.root + '/app/models/*.coffee')
  models.forEach (model) ->
    require(model)

  controllers = glob.sync(config.root + '/app/controllers/*.coffee')
  controllers.forEach (controller) ->
    require(controller) app, db

  app.use (req, res, next) ->
    err = new Error('Not Found')
    err.status = 404
    next err
    return
  if app.get('env') == 'development'
    app.use (err, req, res, next) ->
      res.status err.status or 500
      res.render 'error',
        message: err.message
        error: err
        title: 'error'
      return
  app.use (err, req, res, next) ->
    res.status err.status or 500
    res.render 'error',
      message: err.message
      error: {}
      title: 'error'
    return
  return
