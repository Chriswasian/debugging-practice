def calculate_tip(bill, tip_percent):
    return bill * tip_percent / 100

def split_bill(bill, tip_percent, people):
    tip = calculate_tip(bill, tip_percent)
    total = bill + tip
    per_person = total / people
    return per_person

def get_most_expensive_meal(orders):
    priciest = orders[0]
    for order in orders:
        if order["total"] > priciest["total"]:
            priciest = order
    return priciest

def print_dinner_summary(orders, tip_percent):
    bills = [order["total"] for order in orders]
    grand_total = sum(bills)
    priciest = get_most_expensive_meal(orders)
    per_person = split_bill(grand_total, tip_percent, len(orders))
        
    print("Grand total: $" + str(round(grand_total, 2)))
    print("Tip (" + str(tip_percent) + "%): $" + str(round(calculate_tip(grand_total, tip_percent), 2)))
    print("Per person: $" + str(round(per_person, 2)))
    print("Most expensive: " + priciest["name"] + " ($" + f"{priciest['total']:.2f}" + ")")

orders = [
    {"name": "Wilson", "total": 42.50},
    {"name": "Jason", "total": 38.75},
    {"name": "Jersy", "total": 55.00},
]

print_dinner_summary(orders, 18)