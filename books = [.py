books = [
    {"title": "Dune", "author": "Frank Herbert", "available": True},
    {"title": "1984", "author": "George Orwell", "available": False},
    {"title": "The Hobbit", "author": "J.R.R. Tolkien", "available": True},
]

def check_out_book(books, title):
    for book in books:
        if book["title"] == title:
            if book["available"] == True:
                book["available"] = False
                print(title + " has been checked out.")
            else:
                                print(title + " is not available.")
            return
    print(title + " was not found.")

def count_available(books):
    count = 0
    for book in books:
        if book["available"] == True:
            count += 1
    return count

def print_library(books):
    print("--- Library ---")
    for book in books:
        status = "Available" if book["available"] else "Checked Out"
        print(book["title"] + " by " + book["author"] + " - " + status)

print_library(books)
check_out_book(books, "Dune")
print("Available books: " + str(count_available(books)))
print_library(books)