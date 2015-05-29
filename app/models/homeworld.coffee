mongoose = require("mongoose")
Schema = mongoose.Schema
characteristics = require("./resources/characteristics.coffee")

schema = mongoose.Schema
  name: String
  skills: [Schema.Types.Mixed]
  aptitude: String
  wounds: String
  modifiers:
    negative: [{type: String, enum: characteristics}]
    positive: [{type: String, enum: characteristics}]
  fate:
    threshold: Number
    blessed: Number
  bonus:
    name: String
    description: String
  recommendedBackgrounds: [{type: Schema.Types.ObjectId, ref: "Background"}]

Homeworld = mongoose.model("Homeworld", schema)

module.exports = Homeworld
