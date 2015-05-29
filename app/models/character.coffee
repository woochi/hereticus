mongoose = require("mongoose")
Schema = mongoose.Schema
characteristics = require("./resources/characteristics.coffee")

schema = mongoose.Schema
  name: String
  homeworld: {type: Schema.Types.ObjectId, ref: "Homeworld"}
  background: {type: Schema.Types.ObjectId, ref: "Background"}
  role: {type: Schema.Types.ObjectId, ref: "Role"}
  aptitudes: [{type: String, enum: characteristics}]
  skills: [{type: Schema.Types.ObjectId, ref: "Skill"}]
  talents: [{type: Schema.Types.ObjectId, ref: "Talent"}]

Character = mongoose.model("Character", schema)

module.exports = Character
