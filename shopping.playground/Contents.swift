var items = ["Shoes", "Hat", "Jacket", "Bag", "Belt"]
var prices = [89.99, 24.99, 149.99, 59.99, 34.99]
var quantities = [1, 2, 1, 1, 3]

var subtotal = 0.0
var mostExpensive = 0.0
var mostExpensiveItem = items[0]
var itemCount = 0

for i in 0..<items.count {
let lineTotal = prices[i] * Double(quantities[i])
subtotal += lineTotal
itemCount += quantities[i]
    if prices[i] > mostExpensive {
        mostExpensive = prices[i]
        mostExpensiveItem = items[i]
        }
        }

        let discount = subtotal * 0.10
        let total = subtotal - discount

        print("Items in cart: \(itemCount)")
        print("Subtotal: $\(subtotal)")
        print("10% discount: $\(discount)")
        print("Total: $\(total)")
        print("Most expensive: \(mostExpensiveItem) at $\(mostExpensive)")
        print("Last item: \(items[items.count - 1])")
