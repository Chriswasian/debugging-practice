# Movie rating tracker

movies = [
    {"title": "Dune", "rating": 8.5},
    {"title": "Nope", "rating": 7.2},
    {"title": "Midsommar", "rating": 7.8},
    {"title": "Everything Everywhere", "rating": 9.0},
]

def get_top_rated(movie_list):
    for m in movie_list:
        if m["rating"] >= 8.0:
            top = m["title"]
    return top

def print_rankings(movie_list):
    sorted_movies = sorted(movie_list, key=lambda x: x["rating"], reverse=True)
    total = 0
    for i in range(len(sorted_movies)):
        total = total + sorted_movies[i]["rating"]
        print(f"#{i + 1}. {sorted_movies[i]['title']} — {sorted_movies[i]['rating']}")

top = get_top_rated(movies)
print(f"Top rated: {top}")
print_rankings(movies)
