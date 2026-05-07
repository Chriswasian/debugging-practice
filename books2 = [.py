books = [
    {"title": "Dune", "pages": 412, "rating": 4.8},
    {"title": "1984", "pages": 328, "rating": 4.5},
    {"title": "Brave New World", "pages": 311, "rating": 4.2},
]

def get_average_rating(books):
    total = 0
    for book in books:
        total += book["rating"]
    return total / len(books)

def get_longest_book(books):
    longest = books[0]
    for book in books:
        if book["pages"] > longest["pages"]:
            longest = book
    return longest

def print_summary(books):
    avg = get_average_rating(books)
    longest = get_longest_book(books)
    print("Average rating: " + str(avg))
    print("Longest book: " + str(longest["title"]) + " (" + str(longest["pages"]) + " pages)")

print_summary(books)