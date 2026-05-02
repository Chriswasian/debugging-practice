def validate_password(password):
    if len(password) < 8:
        print("Password must be at least 8 characters.")
        return False
    
    has_upper = False
    has_lower = False
    has_number = False
    
    for char in password:
        if char.isupper():
            has_upper = True
        if char.islower():
                        has_lower = True
        if char.isdigit():
            has_number = True
    
    if has_upper == False:
        print("Password must contain an uppercase letter.")
        return False
    if has_lower == False:
        print("Password must contain a lowercase letter.")
        return False
    if has_number == False:
        print("Password must contain a number.")
        return False
    
    return True
passwords = ["hello", "Hello1234", "hello1234", "HELLO1234", "Hi1"]

for password in passwords:
    result = validate_password(password)
    print(password + " - Valid: " + str(result))