struct CoffeeOrder {
    var drinks: [String] = []
    var prices: [Double] = []
    
    mutating func addDrink(_ name: String, price: Double) {
        drinks.append(name)
        prices.append(price)
    }
    
    func total() -> Double {
        return prices.reduce(0, +)
    }
    func showOrder() {
        print("☕ Order Summary:")
        for i in 0..<drinks.count {
            print("\(i + 1). \(drinks[i]) — $\(prices[i])")
        }
        print("Total: $\(total())")
        print("Most expensive: $\(prices[prices.count - 1])")
    }
}

var order = CoffeeOrder()
order.addDrink("Latte", price: 5.50)
order.addDrink("Espresso", price: 3.00)
order.addDrink("Matcha", price: 6.00)
order.showOrder()
