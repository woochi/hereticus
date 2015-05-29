express = require("express")
router = express.Router()

module.exports = (app, db) ->

  router.get "/", (req, res, next) ->
    query = [
      "MATCH (nodes:Background)"
      "RETURN nodes.name as name"
    ].join(" ")
    db.query query, (err, data) ->
      res.json data

  app.use "/backgrounds", router
