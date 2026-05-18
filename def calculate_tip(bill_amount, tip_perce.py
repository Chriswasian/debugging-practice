def calculate_tip(bill_amount, tip_percent):
    tip = bill_amount * (tip_percent/ 100)
    total = bill_amount + tip
    return total

def split_bill(total, num_people):
    each_pays = total / num_people
    return each_pays

orders = [
    {"person": "Alice", "amount": 24.50},
    {"person": "Bob", "amount": 18.00},
    {"person": "Charlie", "amount": 31.75},
    ]

bill_total = 0
for order in orders:
    bill_total += order["amount"]

tip_percent = 18
total_with_tip = calculate_tip(bill_total, tip_percent)
each = split_bill(total_with_tip, len(orders))

print("Bill total: $" + str(round(bill_total, 2)))
print("Total with tip: $" + str(round(total_with_tip, 2)))
print("Each person pays: $" + str(round(each, 2)))
for order in orders:
    print(order["person"] + " ordered: $" + str(order["amount"]))