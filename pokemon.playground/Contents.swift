var pokemonNames = ["Sylveon", "Pikachu", "Gengar", "Eevee", "Charizard"]
var pokemonLevels = [45, 32, 58, 21, 67]

var totalLevels = 0
var strongestName = pokemonNames[0]
var strongestLevel = 0

for i in 0..<pokemonLevels.count {
    totalLevels += pokemonLevels[i]
    if pokemonLevels[i] > strongestLevel {
        strongestLevel = pokemonLevels[i]
        strongestName = pokemonNames[i]
    }
}

let averageLevel = totalLevels / (pokemonLevels.count)

print("Team size: \(pokemonNames.count)")
print("Total levels: \(totalLevels)")
print("Average level: \(averageLevel)")
print("Strongest: " + strongestName +  " at level  \(strongestLevel)")
