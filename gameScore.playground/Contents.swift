struct GameScores {
    var players: [String] = []
    var scores: [Int] = []

    mutating func addPlayer(_ name: String, score: Int) {
        players.append(name)
        scores.append(score)
    }

    func highScore() -> Int {
        var best = 0
        for score in scores {
            if score > best {
                best = score
            }
        }
        return best
    }

    func averageScore() -> Int {
        let total = scores.reduce(0, +)
        return total / (scores.count)
    }

    func showScoreboard() {
        print("🎮 Scoreboard:")
        for i in 0..<players.count {
            print("\(i + 1). \(players[i]) — \(scores[i]) pts")
        }
        print("High score: \(highScore())")
        print("Average: \(averageScore()) pts")
    }
}

var game = GameScores()
game.addPlayer("Wilson", score: 4200)
game.addPlayer("Jason", score: 3850)
game.addPlayer("Jersy", score: 5100)
game.showScoreboard()
