def count_words(sentence):
    if sentence == "":
        return 0
    count = 1
    for char in sentence:
        if char == " ":
            count += 1
    return count

print(count_words(""))