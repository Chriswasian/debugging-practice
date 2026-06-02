var pokemon = ["Sylveon", "Pikachu", "Charizard", "Gengar", "Snorlax"]
var levels = [65, 42, 78, 55, 80]
var hp = [180, 95, 240, 110, 320]

var totalLevels = 0
var highestHP = 0
var strongestPokemon = pokemon[0]
var teamSize = 0

for i in 0..<pokemon.count {
totalLevels += levels[i]
    if hp[i] > highestHP {
        highestHP = hp[i]
        strongestPokemon = pokemon[i]
        }
        teamSize += 1
        }

        let avgLevel = totalLevels / pokemon.count

        print("Team size: \(teamSize)")
        print("Average level: \(avgLevel)")
        print("Highest HP: \(highestHP)")
        print("Tankiest: \(strongestPokemon)")
        print("Weakest level: \(levels[0])")
