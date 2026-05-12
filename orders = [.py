orders = [
    {"item": "Latte", "price": 5.50, "quantity": 2},
    {"item": "Bagel", "price": 3.25, "quantity": 4},
    {"item": "Muffin", "price": 2.75, "quantity": 0},
]

def get_order_total(order):
    return order["price"] * order["quantity"]

def get_most_expensive(orders):
    priciest = orders[0]
    for order in orders:
        if order["price"] > priciest["price"]:
                        priciest = order
    return priciest

def get_items_in_stock(orders):
    in_stock = []
    for order in orders:
        if order["quantity"] > 0:
            in_stock.append(order["item"])
    return in_stock

def print_summary(orders):
    totals = []
    for order in orders:
        totals.append(get_order_total(order))
    grand_total = sum(totals)
    priciest = get_most_expensive(orders)
    in_stock = get_items_in_stock(orders)
    print("Grand total: $" + str(grand_total))
    print("Most expensive: " + priciest["item"])
    print("In stock: " + ", " .join(in_stock))

print_summary(orders)