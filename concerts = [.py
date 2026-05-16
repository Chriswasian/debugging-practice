concerts = [
    {"artist": "Billie Eilish", "venue": "Crypto.com Arena", "tickets": 150, "sold": 98},
    {"artist": "Tyler the Creator", "venue": "Hollywood Bowl", "tickets": 200, "sold": 200},
    {"artist": "Sabrina Carpenter", "venue": "The Forum", "tickets": 175, "sold": 143},
]

def get_sold_out(concerts):
    sold_out = []
    for concert in concerts:
        if concert["tickets"] == concert["sold"]:
            sold_out.append(concert["artist"])
    return sold_out
def get_total_revenue(concerts, price_per_ticket):
    total = 0
    for concert in concerts:
        total += concert["sold"] * price_per_ticket
    return total

def get_attendance_rate(concert):
    return concert["sold"] / concert["tickets"] * 100

def print_summary(concerts):
    sold_out = get_sold_out(concerts)
    revenue = get_total_revenue(concerts, 85)
    rates = [f"{c['artist']}: {round(get_attendance_rate(c), 1)}%" for c in concerts]
    print("Sold out shows: " + ", ".join(sold_out))
    print("Total revenue: $" + str(revenue))
    print("Attendance rates:")
    for rate in rates:
        print("  " + rate)

print_summary(concerts)