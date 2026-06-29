struct SavingsTracker {
    var categories: [String] = []
    var amounts: [Double] = []
    
   mutating func addGoal(_ category: String, amount: Double) {
        categories.append(category)
        amounts.append(amount)
    }
    
    func totalSaved() -> Double {
        return amounts.reduce(0, +)
    }
    func showSavings() {
        print("💰 Savings Goals (\(categories.count) goals):")
        for i in 0..<categories.count {
            print("\(i + 1). \(categories[i]) — $\(amounts[i])")
        }
        print("Total saved: $\(totalSaved())")
    }
}

var tracker = SavingsTracker()
tracker.addGoal("Tesla PPF", amount: 1500.00)
tracker.addGoal("Philippines Trip", amount: 800.00)
tracker.addGoal("Emergency Fund", amount: 2000.00)
tracker.showSavings()

