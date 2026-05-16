import random

def generate_password(length, use_numbers=True, use_symbols=True):
    letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    numbers = "0123456789"
    symbols = "!@#$%^&*"
    
    pool = letters
    if use_numbers:
        pool += numbers
    if use_symbols:
        pool += symbols
        password = ""
    for i in range(length):
        password += random.choice(pool)
    return password

def check_strength(password):
    has_upper = any(c.isupper() for c in password)
    has_lower = any(c.islower() for c in password)
    has_number = any(c.isdigit() for c in password)
    has_symbol = any(c in "!@#$%^&*" for c in password)
    
    score = 0
    if has_upper: score += 1
    if has_lower: score += 1
    if has_number: score += 1
    if has_symbol: score += 1
    if len(password) >= 12: score += 1
    
    if score == 5:
        return "Strong"
    elif score >= 3:
        return "Medium"
    else:
        return "Weak"

def print_password_report(length):
    password = generate_password(length)
    strength = check_strength(password)
    print(f"Generated password: {password}")
    print(f"Length: {length}")
    print(f"Strength: {strength}")
    if strength != "Strong":
        print(f"Use this password? Think twice if it's not Strong!")

passwords = [8, 12, 16]
for length in passwords:
    print_password_report(length)
    print("---")