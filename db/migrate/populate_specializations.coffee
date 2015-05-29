config = require('../../config/config')
db = require('../../config/db')(config)
path = require("path")

specializationsFile = path.resolve(path.join(__dirname, "../data/specializations.csv"))

logResponse = (err, data) ->
  console.log err or data

clear = [
  "MATCH (n:specializations)"
  "OPTIONAL MATCH (n)-[r]-()"
  "DELETE n, r"
].join("\n")

query2 = [
  "LOAD CSV WITH HEADERS FROM 'file://#{specializationsFile}' as line"
  "MATCH (s:Skill)"
  "WHERE s.name = line.skill"
  "CREATE (n:Specialization {name: line.name})"
  "CREATE (s)-[r:HAS_SPECIALIZATION]->(n)"
  "RETURN n.name"
].join("\n")

db.query(clear, logResponse)
db.query(query2, logResponse)
