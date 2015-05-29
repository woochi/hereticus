express = require("express")
router = express.Router()
mongoose = require("mongoose")
Skill = mongoose.model("Skill")

module.exports = (app) ->

  router.get "/", (req, res, next) ->
    Skill.find {}, (err, skills) ->
      return next(err) if err
      return next(new NotFoundError) if !skills
      res.send skills

  app.use "/skills", router
