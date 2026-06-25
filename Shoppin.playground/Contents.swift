struct ShoppingCart {
    var items: [String] = []
    var prices: [Double] = []

    mutating func addItem(_ name: String, price: Double) {
        items.append(name)
        prices.append(price)
    }

    func mostExpensive() -> String? {
        guard prices.count > 0 else { return nil }
        var highest = 0.0
        var topItem = ""
        for i in 0..<prices.count {
            if prices[i] > highest {
                highest = prices[i]
                topItem = items[i]
            }
        }
        return topItem
    }

    func total() -> Double {
        return prices.reduce(0, +)
    }

    func showCart() {
        print("🛒 Cart:")
        for i in 0..<items.count {
            print("\(i + 1). \(items[i]) — $\(prices[i])")
        }
        if let top = mostExpensive() {
            print("Priciest: \(top)")
        }
        print("Total: $\(total())")
    }
}

var cart = ShoppingCart()
cart.addItem("AirPods", price: 129.99)
cart.addItem("MagSafe Charger", price: 39.00)
cart.addItem("iPhone Case", price: 49.99)
cart.showCart()
