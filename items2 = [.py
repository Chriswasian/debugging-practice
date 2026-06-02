items = [
{"name": "Apple", "price": 1.50, "qty": 4},
{"name": "Bread", "price": 3.25, "qty": 2},
{"name": "Milk", "price": 2.99, "qty": 1},
{"name": "Eggs", "price": 4.50, "qty": 1},
{"name": "Cheese", "price": 5.75, "qty": 2}
]

def get_expensive(items):
    result = []
    for item in items:
        if item["price"] > 4.00:
            result.append(item["name"])
    return result

total = 0
tax_rate = 8

for item in items:
    line_total = item["price"] * item["qty"]
    total = total + line_total

    tax = total * tax_rate / 100
    final = total + tax

print("Subtotal: $" + str(round(total, 2)))
print("Tax (8%): $" + str(round(tax, 2)))
print("Total: $" + str(round(final, 2)))
print("Expensive items: " + str(get_expensive(items)))