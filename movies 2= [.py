movies = [
    {"title": "Dune", "rating": 8.5, "watched": True, "runtime": 155},
    {"title": "Oppenheimer", "rating": 8.9, "watched": True, "runtime": 180},
    {"title": "Barbie", "rating": 7.0, "watched": False, "runtime": 114},
    {"title": "Past Lives", "rating": 7.8, "watched": False, "runtime": 106},
]

def get_watched(movies):
    watched = []
    for movie in movies:
        if movie["watched"]:
            watched.append(movie["title"])
    return watched
def get_unwatched_count(movies):
    count = 0
    for movie in movies:
        if not movie["watched"]:
            count += 1
    return count

def get_highest_rated(movies):
    best = movies[0]
    for movie in movies:
        if movie["rating"] > best["rating"]:
            best = movie
    return best
def get_total_runtime(movies, watched_only=True):
    total = 0
    for movie in movies:
        if watched_only and movie["watched"]:
            total += movie["runtime"]
    return total

def print_report(movies):
    watched = get_watched(movies)
    unwatched = get_unwatched_count(movies)
    best = get_highest_rated(movies)
    runtime = get_total_runtime(movies)
    print("Watched: " + ", ".join(watched))
    print("Unwatched count: " + str(unwatched))
    print("Highest rated: " + best["title"] + " (" + str(best["rating"]) + "/10)")
    print("Total watched runtime: " + str(runtime) + " mins")

print_report(movies)