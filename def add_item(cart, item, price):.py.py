def add_item(cart, item, price):
    cart[item] = price
    return cart

def get_total(cart):
    total = 0
    for item in cart:
        total += cart[item]
    return total

def apply_discount(total, discount_percent):
    discount = total * discount_percent / 100
    final_price = total - discount
    return final_price

my_cart = {}
add_item(my_cart, "Pokémon Card Pack", 12.99)
add_item(my_cart, "Sleeve Pack", 4.99)
add_item(my_cart, "Binder", 15.00)

total = get_total(my_cart)
discounted = apply_discount(total, 10)

print("Cart total: $" + str(round(total, 2)))
print("After 10% discount: $" + str(round(discounted, 2)))