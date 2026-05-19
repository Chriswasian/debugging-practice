def rank_players(scores):
    return sorted(scores, key=lambda x: x["score"], reverse=True)

def award_bonus(players, bonus_points):
    for player in players:
        player["score"] += bonus_points
    return players

def display_results(players):
    print("=== LEADERBOARD ===")
    for i in range(len(players)):
        rank = str(i + 1) + ". "
        name = players[i]["name"]
        score = players[i]["score"]
        print(rank + name + " - " + str(score) + " pts")

scores = [
    {"name": "Alice", "score": 4200},
    {"name": "Bob", "score": 8750},
    {"name": "Charlie", "score": 3100},
    {"name": "Diana", "score": 9500},
    {"name": "Eve", "score": 6300},
]

updated = award_bonus(scores, 500)
ranked = rank_players(updated)
display_results(ranked)
print("Winner: " + ranked[0]["name"])