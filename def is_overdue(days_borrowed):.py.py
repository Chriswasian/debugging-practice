def is_overdue(days_borrowed):
    return days_borrowed > 14

def calculate_fine(days_borrowed):
    if is_overdue(days_borrowed):
        overdue_days = days_borrowed - 14
        fine = overdue_days * 0.25
        return fine
    return 0

books = [
    {"title": "Dune", "days": 20},
    {"title": "1984", "days": 10},
        {"title": "The Hobbit", "days": 30},
    {"title": "Ender's Game", "days": 5},
]

total_fines = 0
overdue_books = []

for book in books:
    fine = calculate_fine(book["days"])
    total_fines += fine
    if is_overdue(book["days"]):
        overdue_books.append(book["title"])

print("Overdue books:", overdue_books)
print("Total fines: $" + str(total_fines))
print("Number overdue:", len(overdue_books))