products = [
    {"name": "Keyboard", "price": 79.99, "stock": 15},
    {"name": "Mouse", "price": 29.99, "stock": 8},
    {"name": "Monitor", "price": 299.99, "stock": 3},
]

def get_total_value(products):
    total = 0
    for product in products:
        total += product["price"] * product["stock"]
    return total

def get_cheapest(products):
    cheapest = products[0]
    for product in products:
        if product["price"] < cheapest["price"]:
            cheapest = product
    return cheapest

def print_report(products):
    total = get_total_value(products)
    cheapest = get_cheapest(products)
    print("Total inventory value: $" + str(total))
    print("Cheapest item: " + cheapest["name"] + " at $" + str(cheapest["price"]))

print_report(products)