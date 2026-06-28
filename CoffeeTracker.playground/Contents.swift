struct CoffeeTracker {
    var drinks: [String] = []
    var prices: [Double] = []
    
   mutating func orderDrink(_ name: String, price: Double) {
        drinks.append(name)
        prices.append(price)
    }
    
    func cheapest() -> String {
        var lowest = prices[0]
        var cheapDrink = drinks[0]
        for i in 1..<drinks.count {
            
            if prices[i] < lowest {
                lowest = prices[i]
                cheapDrink = drinks[i]
            }
        }
        return cheapDrink
    }
    
    func showOrders() {
        print("☕ Orders (\(drinks.count) drinks):")
        for i in 0..<drinks.count {
            print("\(i + 1). \(drinks[i]) — $\(prices[i])")
        }
        print("Cheapest: \(cheapest())")
        print("Total: $\(prices.reduce(0, +))")
    }
    
}

var tracker = CoffeeTracker()
tracker.orderDrink("Latte", price: 5.50)
tracker.orderDrink("Espresso", price: 3.00)
tracker.orderDrink("Matcha", price: 6.25)
tracker.showOrders()
