var playerNames = ["Zoe", "Marcus", "Priya", "Luca", "Sofia"]
var playerScores = [320, 485, 210, 560, 395]

var totalScore = 0
var topScore = 0
var topPlayer = playerNames[0]
var lowestScore = playerScores[0]
var lowestPlayer = playerNames[0]

for i in 0..<playerScores.count {
    totalScore += playerScores[i]
    if playerScores[i] > topScore {
        topScore = playerScores[i]
        topPlayer = playerNames[i]
    }
    if playerScores[i] < lowestScore {
        lowestScore = playerScores[i]
        lowestPlayer = playerNames[i]
    }
}

let average = totalScore / (playerScores.count)

print("Players: \(playerNames.count)")
print("Average score: \(average)")
print("Top player: \(topPlayer) with \(topScore) pts")
print("Lowest player: \(lowestPlayer) with \(lowestScore) pts")
print("First player: \(playerNames[playerNames.count - 1])")
