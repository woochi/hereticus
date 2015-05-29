express = require("express")
router = express.Router()

router.get "/", (req, res, next) ->
  router.get "/", (req, res, next) ->
    query = [
      "MATCH (nodes:Homeworld)"
      "RETURN nodes.name as name"
    ].join(" ")
    db.query query, (err, data) ->
      res.send data

module.exports = (app) ->
  app.use "/homeworlds", router
