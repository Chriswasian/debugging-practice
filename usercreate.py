def create_user(name, age, email):
    if name == "":
        return "Error: Name cannot be empty"
    if age < 0:
        return "Error: Age cannot be negative"

    user = {
    "name": name,
    "age": age,
    "email": email
    }
    return user

def get_user_info(user):
    print("Name: " + user["name"])
    print("Age: " + str(user["age"]))
    print("Email: " + user["email"])

def apply_senior_discount(user):
    if user["age"] >= 65:
        discount = 0.20 * 100
        print(user["name"] + " qualifies for a " + str(discount) + "% senior discount!")
    else:
        print(user["name"] + " does not qualify for senior discount.")

new_user = create_user("Wilson", 65, "wilson@example.com")
get_user_info(new_user)
apply_senior_discount(new_user)
