accounts = [
{"owner": "Alice", "balance": 1500.00},
{"owner": "Bob", "balance": 320.50},
{"owner": "Charlie", "balance": 4200.75},
{"owner": "Diana", "balance": 875.25},
{"owner": "Eve", "balance": 2100.00}
]

total = 0
rich = []
interest_rate = 5

for account in accounts:
    total += account["balance"]
    if account["balance"] >= 1000:
        rich.append(account["owner"])

average = total / len(accounts)
interest = average * interest_rate / 100

print("Total deposits: $" + str(round(total, 2)))
print("Average balance: $" + str(round(average, 2)))
print("Interest (5%): $" + str(round(interest, 2)))
print("High balance accounts: " + str(rich))
