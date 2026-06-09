struct Inventory {
    var items: [String] = []
    var prices: [Double] = []
    
    mutating func addItem(_ name: String, price: Double) {
        items.append(name)
        prices.append(price)
    }
    
    func mostExpensive() -> String {
        var topPrice = 0.0
        var topItem = ""
        for i in 0..<prices.count {
            if prices[i] > topPrice {
                topPrice = prices[i]
                topItem = items[i]
            }
        }
        return topItem
    }
    
    func showInventory() {
        print("Inventory (\(items.count) items):")
        for i in 0..<items.count {
            print("\(i + 1). \(items[i]) — $\(prices[i])")
        }
        print("Most expensive: \(mostExpensive())")
    }
}

var store = Inventory()
store.addItem("AirPods", price: 129.99)
store.addItem("iPhone Case", price: 49.99)
store.addItem("MagSafe Charger", price: 39.99)
store.showInventory()
