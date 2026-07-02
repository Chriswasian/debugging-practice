struct ScoreBoard {
    var players: [String] = []
    var scores: [Int] = []

    mutating func addScore(_ player: String, score: Int) {
        players.append(player)
        scores.append(score)
    }

    func topPlayer() -> String {
        var highest = 0
        var top = ""
        for i in 0..<players.count {
            if scores[i] > highest {
                highest = scores[i]
                top = players[i]
            }
        }
        return top
    }

    func totalPoints() -> Int {
        return scores.reduce(0, +)
    }

    func showBoard() {
        print("🏆 Scoreboard (\(players.count) players):")
        for i in 0..<players.count {
            print("\(i + 1). \(players[i]) — \(scores[i]) pts")
        }
        print("Top: \(topPlayer())")
        print("Total: \(totalPoints()) pts")
    }
}

var board = ScoreBoard()
board.addScore("Wilson", score: 4800)
board.addScore("Jason", score: 4200)
board.addScore("Lucky", score: 5100)
board.showBoard()
