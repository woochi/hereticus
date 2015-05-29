express = require("express")
router = express.Router()

module.exports = (app, db) ->

  router.get "/", (req, res, next) ->
    query = [
      "MATCH (nodes:Role)"
      "RETURN nodes.name as name"
    ].join(" ")
    db.query query, (err, data) ->
      res.send data

  app.use "/roles", router
