talents = [
  {name: "Ambidextrous"}
  {name: "Blind Fighting"}
  {name: "Catfall"}
  {name: "Clues from the Crowds"}
  {name: "Die Hard"}
  {name: "Disarm"}
  {name: "Double Team"}
  {name: "Ferric Summons"}
  {name: "Frenzy"}
  {name: "Iron Jaw"}
  {name: "Jaded"}
  {name: "Keen Intuition"}
  {name: "Leap Up"}
  {name: "Nowhere to Hide"}
  {name: "Quick Draw"}
  {name: "Rapid Reload"}
  {name: "Sound Constitution"}
  {name: "Takedown"}
  {name: "Technical Knock"}
  {name: "Warp Sense"}
  {name: "Weapon-Tech"}
]

talents2 = [
  {name: "Armour-Monger"}
  {name: "Battle Rage"}
  {name: "Bulging Biceps"}
  {name: "Combar Master"}
  {name: "Constant Vigilance"}
  {name: "Contact Network"}
  {name: "Coordinated Interrogation"}
  {name: "Counter Attack"}
  {name: "Cover-Up"}
  {name: "Deny the Witch"}
  {name: "Devastating Assault"}
  {name: "Double Tap"}
  {name: "Face in a Crowd"}
  {name: "Hard Target"}
  {name: "Hardy"}
  {name: "Hardy"}
  {name: "Hatred"}
  {name: "Hip Shooting"}
  {name: "Independent Targeting"}
  {name: "Inescapable Attack"}
  {name: "Killing Strike"}
  {name: "Luminen Shock"}
  {name: "Maglev Transcendance"}
  {name: "Marskman"}
  {name: "Precision Killer"}
  {name: "Prosanguine"}
  {name: "Strong Minded"}
  {name: "Swift Attack"}
  {name: "Unarmed Specialist"}
  {name: "Warp Conduit"}
  {name: "Whirlwind of Death"}
]

talents3 = [
  {name: "Adamantium Faith"}
  {name: "Assassin Strike"}
  {name: "Bastion of Iron Will"}
  {name: "Blademaster"}
  {name: "Crushing Blow"}
  {name: "Delicate Interrogation"}
  {name: "Eye of Vengeance"}
  {name: "Favoured by the Warp"}
  {name: "Flash of Insight"}
  {name: "Halo of Command"}
  {name: "Hammer Blow"}
  {name: "Infused Knowledge"}
  {name: "Lighting Attack"}
  {name: "Luminen Blast"}
  {name: "Mighty Shot"}
  {name: "Never Die"}
  {name: "Prenatural Speed"}
  {name: "Sprint"}
  {name: "Step Aside"}
  {name: "Superior Chirurgeon"}
  {name: "Target Selection"}
  {name: "Thunder Charge"}
  {name: "True Grit"}
  {name: "Two-Weapon Master"}
  {name: "Warp Lock"}
]

specializations = [
  {name: "Enemy: "}
]

logResponse = (err, data) ->
  console.log err or data

queries = talents.map (talent) ->
  "CREATE (n:Talent {name: '#{talent.name}'}) RETURN n.name"
#console.log queries
db.query(query, logResponse) for query in queries
