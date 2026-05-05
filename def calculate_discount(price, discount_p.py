def calculate_discount(price, discount_percent):
    discount = price * (discount_percent / 100)
    final_price = price - discount
    return final_price

def get_cheapest(products):
    cheapest = products[0]
    for product in products:
        if product["price"] < cheapest["price"]:
            cheapest = product
    return cheapest

def summarize(products, discount_percent):
        print("=== SALE SUMMARY ===")
        for product in products:
            discounted = calculate_discount(product["price"], discount_percent)
            print(product["name"] + ": $" + str(discounted))
            cheapest = get_cheapest(products)
        print("Best deal: " + cheapest["name"])

products = [
    {"name": "Keyboard", "price": 80},
    {"name": "Mouse", "price": 45},
    {"name": "Monitor", "price": 300},
]

summarize(products, 20)