def format_price(price):
    return "$" + str(round(price, 2))

def apply_tax(price, tax_rate):
    return price + (price * tax_rate)

def get_category(price):
    if price >= 100:
        return "Premium"
    elif price >= 50:
        return "Mid-range"
    else:
        return "Budget"

products = [
{"name": "AirPods", "price": 129.99},
{"name": "MagSafe Charger", "price": 39.00},
{"name": "Apple Watch Band", "price": 49.00},
{"name": "USB-C Hub", "price": 79.99},
{"name": "Lightning Cable", "price": 19.00},
]

tax_rate = 0.0775
results = []
total = 0

for product in products:
    taxed = apply_tax(product["price"], tax_rate)
    total += taxed
    category = get_category(taxed)
    results.append({
    "name": product["name"],
    "price": taxed,
    "category": category
})

for r in results:
    print(r["name"] + " - " + format_price(r["price"]) + " (" + r["category"] + ")")

print("Total: " + format_price(round(total, 2)))
