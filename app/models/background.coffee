mongoose = require("mongoose")
Schema = mongoose.Schema
characteristics = require("./resources/characteristics.coffee")

schema = Schema
  name: String
  skills: [{type: Schema.Types.Mixed}]
  talents: [{type: Schema.Types.Mixed}]
  equipment: [{type: Schema.Types.Mixed, required: true}]
  aptitudes: [{type: String, enum: characteristics, required: true}]
  bonus:
    name: {type: String, required: true}
    description: {type: String, required: true}
  recommendedRoles: [{type: Schema.Types.ObjectId, ref: "Role"}]

schema.path("skills").validate (skill) ->

schema.path("talents").validate (talent) ->

Background = mongoose.model("Background", schema)

module.exports = Background
