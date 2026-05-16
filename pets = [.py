pets = [
    {"name": "Chai", "type": "dog", "age": 3, "vaccinated": True},
    {"name": "Princeton", "type": "dog", "age": 5, "vaccinated": True},
    {"name": "Mochi", "type": "cat", "age": 2, "vaccinated": False},
    {"name": "Boba", "type": "cat", "age": 7, "vaccinated": True},
]

def get_vaccinated(pets):
    vaccinated = []
    for pet in pets:
        if pet["vaccinated"]:
            vaccinated.append(pet["name"])
    return vaccinated
def get_oldest(pets):
    oldest = pets[0]
    for pet in pets:
        if pet["age"] > oldest["age"]:
            oldest = pet
    return oldest

def get_unvaccinated_count(pets):
    count = 0
    for pet in pets:
        if not pet["vaccinated"]:
            count += 1
    return count
def print_report(pets):
    vaccinated = get_vaccinated(pets)
    oldest = get_oldest(pets)
    unvaccinated = get_unvaccinated_count(pets)
    print("Vaccinated: " + ", ".join(vaccinated))
    print("Oldest pet: " + oldest["name"] + " (" + str(oldest["age"]) + " years)")
    print("Unvaccinated count: " + str(unvaccinated))

print_report(pets)