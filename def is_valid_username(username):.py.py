def is_valid_username(username):
    if len(username) < 3:
        return False
    if len(username) > 15:
        return False
    return True

def clean_username(username):
    return username.strip().lower()

def process_signups(usernames):
    valid = []
    invalid = []
    for username in usernames:
        cleaned = clean_username(username)
        if is_valid_username(cleaned):
            valid.append(cleaned)
        else:
            invalid.append(cleaned)
    return valid, invalid

signups = ["  Alice  ", "Bob", "x", "SuperLongUsernameThatIsTooLong", "  Charlie  ", "Jo"]

valid_users, invalid_users = process_signups(signups)

print("Valid users:", len(valid_users))
print("Invalid users:", len(invalid_users))
print("Valid:", valid_users)
print("Invalid:", invalid_users)
print("First valid user: " + valid_users[0])