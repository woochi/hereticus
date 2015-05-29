mongoose = require("mongoose")

schema = mongoose.Schema
  name: String

Skill = mongoose.model("Skill", schema)

module.exports = Skill
