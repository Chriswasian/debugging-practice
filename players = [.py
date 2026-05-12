players = [
    {"name": "Zara", "score": 4200, "level": 12, "active": True},
    {"name": "Finn", "score": 1850, "level": 7, "active": False},
    {"name": "Nova", "score": 6750, "level": 18, "active": True},
    {"name": "Remy", "score": 3100, "level": 9, "active": True},
]

def get_active_players(players):
    active = []
    for player in players:
        if player["active"]:
            active.append(player["name"])
    return active
def get_top_scorer(players):
    top = players[0]
    for player in players:
        if player["score"] > top["score"]:
            top = player
    return top

def get_average_level(players):
    total = 0
    for player in players:
        total += player["level"]
    return total / len(players)

def get_score_summary(players):
    scores = []
    for player in players:
        scores.append(player["score"])
    return scores

def print_report(players):
    active = get_active_players(players)
    top = get_top_scorer(players)
    avg_level = get_average_level(players)
    scores = get_score_summary(players)
    print("Active players: " + ", ".join(active))
    print("Top scorer: " + top["name"] + " (" + str(top["score"]) + " pts)")
    print("Average level: " + str(round(avg_level, 1)))
    print("All scores: " + ", ".join([str(s) for s in scores]))
print_report(players)