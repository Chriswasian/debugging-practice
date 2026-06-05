# Shopping cart discount calculator

cart = [
    {"item": "shirt", "price": 25.00},
    {"item": "jeans", "price": 60.00},
    {"item": "shoes", "price": 80.00},
]

discount_rate = 20 # 20% off

discount_applied = False

def apply_discount(items, rate):
        for item in items:
            item["price"] = item["price"] - (item["price"] * rate / 100)
        return items

def print_summary(items):
    total = 0
    for item in items:
        print(f"  {item['item']}: ${item['price']:.2f}")
        total += item["price"]
    print(f"\nTotal after discount: ${total:.2f}")

updated_cart = apply_discount(cart, discount_rate)
discount_applied = True
print_summary(updated_cart)