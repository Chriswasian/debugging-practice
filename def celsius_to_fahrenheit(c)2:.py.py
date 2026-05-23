def celsius_to_fahrenheit(c):
    return (c * 9/5) + 32

def get_weather_label(temp_f):
    if temp_f >= 90:
        return "Hot 🔥"
    elif temp_f >= 70:
        return "Warm ☀️"
    elif temp_f >= 50:
        return "Cool 🌤"
    else:
                return "Cold 🧊"

readings = [
    {"city": "San Diego", "temp_c": 24},
    {"city": "New York", "temp_c": 18},
    {"city": "Chicago", "temp_c": 8},
    {"city": "Phoenix", "temp_c": 38},
    {"city": "Seattle", "temp_c": 14},
]

hottest = readings[0]
results = []

for reading in readings:
    temp_f = celsius_to_fahrenheit(reading["temp_c"])
    label = get_weather_label(temp_f)
    results.append({"city": reading["city"], "temp_f": temp_f, "label": label})
    if reading["temp_c"] > hottest["temp_c"]:
        hottest = reading

for result in results:
    print(result["city"] + ": " + str(round(result["temp_f"], 1)) + "°F - " + result["label"])

print("Hottest city: " + hottest["city"] + " at " + str(hottest["temp_c"]) + "°C")
