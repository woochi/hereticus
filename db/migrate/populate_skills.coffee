config = require('../../config/config')
db = require('../../config/db')(config)
path = require("path")

skillFile = path.resolve(path.join(__dirname, "../data/skills.csv"))

logResponse = (err, data) ->
  console.log err or data

clear = [
  "MATCH (a:Skill)"
  "OPTIONAL MATCH (a)-[r]-()"
  "OPTIONAL MATCH (b:Specialization)"
  "OPTIONAL MATCH (b)-[s]-()"
  "DELETE a, b, r, s"
].join("\n")

query1 = [
  "LOAD CSV WITH HEADERS FROM 'file://#{skillFile}' as line"
  "CREATE (n:Skill {name: line.name})"
  "RETURN n.name"
].join("\n")

db.query(clear, logResponse)
db.query(query1, logResponse)
