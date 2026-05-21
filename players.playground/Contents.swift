import UIKit

var playerNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"]
var playerScores = [4200, 8750, 3100, 9500, 6300]

var total = 0
var winner = playerNames[0]
var highScore = 0

for i in 0..<playerScores.count {
    total = total + playerScores[i]
    if playerScores[i] > highScore {
        highScore = playerScores[i]
        winner = playerNames[i]
    }
}

let average = total / playerScores.count

print("Total score: \(total)")
print("Average score: \(average)")
print("Winner: \(winner) with \(highScore) points")
print("Number of players: \(playerScores.count)")
