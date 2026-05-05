movies = [
    {"title": "Inception", "ratings": [8, 9, 7, 10, 8]},
    {"title": "The Matrix", "ratings": [9, 10, 9, 8, 10]},
    {"title": "Interstellar", "ratings": [7, 8, 9, 7, 8]},
]

def get_average_rating(ratings):
    total = 0
    for r in ratings:
        total += r
    return total / len(ratings)

def get_top_movie(movies):
    top = movies[0]
    for movie in movies:
        if get_average_rating(movie["ratings"]) > get_average_rating(top["ratings"]):
            top = movie
    return top

def print_ratings(movies):
    for movie in movies:
        avg = get_average_rating(movie["ratings"])
        print(movie["title"] + " - Average Rating: " + str(round(avg)))

top = get_top_movie(movies)
print("Top movie: " + top["title"])
print_ratings(movies)