express = require("express")
router = express.Router()
Character = require("../models/character.coffee")


module.exports = (app, db) ->

  router.get "/", (req, res, next) ->
    Character.find {}, (err, characters) ->
      return next(err) if err
      return next(new NotFoundError()) if !characters
      res.send characters

  app.use "/characters", router
