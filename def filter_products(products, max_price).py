def filter_products(products, max_price):
    affordable = []
    for product in products:
        if product["price"] <= max_price:
            affordable.append(product)
    return affordable

def apply_coupon(products, discount):
    for product in products:
        product["price"] = product["price"] * (1 - discount/100)
    return products

def generate_report(products):
    if len(products) == 0:
        return "No products found"
    total = 0
    for product in products:
        total += product["price"]
        cheapest = product
    for product in products:
        if product["price"] < cheapest["price"]:
            cheapest = product
    return total, cheapest

catalog = [
{"name": "keyboard", "price": 85.00},
{"name": "mouse", "price": 45.00},
{"name": "monitor", "price": 320.00},
{"name": "webcam", "price": 65.00},
{"name": "headset", "price": 110.00},
]

budget = 100
affordable = filter_products(catalog, budget)
discounted = apply_coupon(affordable, 10)
result = generate_report(discounted)

total, best = result
print("Affordable products after coupon:")
for p in discounted:
    print(" -" + p["name"] + ": $" + str(round(p["price"], 2)))
print("Total: $" + str(round(total, 2)))
print("Cheapest: " + best["name"])