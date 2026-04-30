items = [
    {"name": "Shirt", "price": 29.99, "quantity": 2},
    {"name": "Pants", "price": 49.99, "quantity": 1},
    {"name": "Shoes", "price": 89.99, "quantity": 1},
]

def calculate_total(items):
    total = 0
    for item in items:
        total += item["price"] * item["quantity"]
    return total

def apply_discount(total, discount_percent):    
    discount = total * discount_percent / 100
    return total - discount

def print_receipt(items, discount_percent):
    total = calculate_total(items)
    discounted = apply_discount(total, discount_percent)
    print("--- Receipt ---")
    for item in items:
        print(item["name"] + " x" + str(item["quantity"]) + " $" + str(round(item["price"] * item["quantity"], 2)))
    print("Subtotal: $" + str(round(total, 3)))
    print("Discount: " + str(discount_percent) + "%")
    print("Total: $" + str(round(discounted, 2)))

print_receipt(items, 10)