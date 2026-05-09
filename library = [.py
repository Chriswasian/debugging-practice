library = [
    {"title": "The Hobbit", "author": "Tolkien", "available": True, "copies": 3},
    {"title": "Dune", "author": "Herbert", "available": False, "copies": 0},
    {"title": "1984", "author": "Orwell", "available": True, "copies": 2},
]

def find_available(library):
    available = []
    for book in library:
        if book["available"] == True:
            available.append(book["title"])
    return available
def count_total_copies(library):
    total = 0
    for book in library:
        total += book["copies"]
    return total

def get_book(library, title):
    for book in library:
        if book["title"] == title:
            return book
    return None
    

def print_summary(library):
    available = find_available(library)
    total = count_total_copies(library)
    book = get_book(library, "Dune")
    print("Available books: " + str(available))
    print("Total copies: " + str(total))
    print("Dune available: " + str(book["available"]))

print_summary(library)