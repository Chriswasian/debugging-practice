def calculate_discount(price, discount_percent):
    discount = price * discount_percent / 100
    final_price = price - discount
    return final_price
def apply_bulk_discount(items):
    discounted = []
    for item in items:
        if item["quantity"] >= 10:
            new_price = calculate_discount(item["price"], 15)
        else:
            new_price = item["price"]
        discounted.append({"name": item["name"], "price": new_price, "quantity": item["quantity"]})
    return discounted

def get_cart_total(items):
    total = 0
    for item in items:
        total += item["price"] * item["quantity"]
    return total

cart = [
    {"name": "T-Shirt", "price": 25.00, "quantity": 12},
    {"name": "Hat", "price": 18.00, "quantity": 3},
    {"name": "Hoodie", "price": 55.00, "quantity": 10},
]

discounted_cart = apply_bulk_discount(cart)
total = get_cart_total(discounted_cart)
print("Discounted items: " + ", ".join([item["name"] for item in discounted_cart]))
print("Cart total: $" + str(total))