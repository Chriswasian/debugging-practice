var gameTitles = ["Zelda", "Mario", "Metroid", "Donkey Kong", "Kirby"]
var gameRatings = [9.5, 8.2, 9.0, 7.8, 8.7]

var totalRating = 0.0
var topRated: [String] = []
var highestRating = 0.0
var highestGame = ""

for i in 0..<gameRatings.count {
    totalRating += gameRatings[i]
    if gameRatings[i] >= 9.0 {
        topRated.append(gameTitles[i])
    }
    if gameRatings[i] > highestRating {
        highestRating = gameRatings[i]
        highestGame = gameTitles[i]
    }
}

let average = totalRating / Double(gameRatings.count)

print("Games: \(gameTitles.count)")
print("Average rating: \(average)")
print("Top rated (9.0+): \(topRated)")
print("Highest rated: \(highestGame) with \(highestRating)")
