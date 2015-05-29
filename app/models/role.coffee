mongoose = require("mongoose")
Schema = mongoose.Schema

schema = mongoose.Schema
  name: String
  aptitudes: [Schema.Types.Mixed]
  talent: [{type: Schema.Types.ObjectId, ref: "Talent"}]
  bonus:
    name: String
    description: String

Role = mongoose.model("Role", schema)

module.exports = Role
