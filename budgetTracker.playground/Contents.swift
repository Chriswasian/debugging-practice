struct BudgetTracker {
    var categories: [String] = []
    var amounts: [Double] = []
    
    mutating func addExpense(_ category: String, amount: Double) {
        categories.append(category)
        amounts.append(amount)
    }
    
    func totalSpent() -> Double {
        return amounts.reduce(0, +)
    }
    func mostExpensive() -> String {
        var highest = 0.0
        var topCategory = ""
        for i in 0..<amounts.count {
            if amounts[i] > highest {
                highest = amounts[i]
                topCategory = categories[i]
        
            }
        }
        return topCategory
    }

    func showBudget() {
        print("Budget Summary (\(categories.count) expenses):")
        for i in 0..<categories.count {
            print("\(i + 1). \(categories[i]): $\(amounts[i])")
        }
        print("Total: $\(totalSpent())")
        print("Most expensive: \(mostExpensive())")
    }
}

var budget = BudgetTracker()
budget.addExpense("Groceries", amount: 120.50)
budget.addExpense("Gas", amount: 45.00)
budget.addExpense("Dining", amount: 85.75)
budget.showBudget()
