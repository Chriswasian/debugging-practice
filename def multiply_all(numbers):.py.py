def multiply_all(numbers):
    result = 1
    for num in numbers:
        result *= num
    return result

print(multiply_all([2, 3, 4]))