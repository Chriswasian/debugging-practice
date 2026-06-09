struct Leaderboard {
    var players: [String] = []
    var scores: [Int] = []
    
    mutating func addPlayer(_ name: String, score: Int) {
        players.append(name)
        scores.append(score)
    }
    
    func averageScore() -> Double {
        let total = scores.reduce(0, +)
        return Double(total) / Double(scores.count)
    }
    func showLeaderboard() {
        print("🏆 Leaderboard:")
        for i in 0..<players.count {
            print("#\(i + 1). \(players[i]) — \(scores[i]) pts")
        }
        print("Winner: \(players[0])")
        print("Last place: \(players[players.count - 1])")
        print("Average: \(averageScore())")
    }
}

var lb = Leaderboard()
lb.addPlayer("Mia", score: 2400)
lb.addPlayer("Leo", score: 1800)
lb.addPlayer("Sam", score: 2100)
lb.showLeaderboard()
