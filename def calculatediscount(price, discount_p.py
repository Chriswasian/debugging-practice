def calculate_discount(price, discount_percent):
    discount = price * discount_percent / 100
    final_price = price - discount
    return final_price

def process_cart(cart):
    results = []
    for item in cart:
        if item["discount"] > 0:
            new_price = calculate_discount(item["price"], item["discount"])
        else:
            new_price = item["price"]
        results.append({
            "name": item["name"],
            "original": item["price"],
            "final": new_price
        })
    return results

cart = [
{"name": "shirt", "price": 40, "discount": 25},
{"name": "hat", "price": 20, "discount": 0},
{"name": "shoes", "price": 80, "discount": 10},
]

cart_results = process_cart(cart)
for item in cart_results:
    savings = item["original"] - item["final"]
    print(item["name"] + ": $" + str(item["final"]) + " (saved $" + str(savings) + ")")