def celsius_to_fahrenheit(c):
    return (c * 9/5) + 32

def get_weekly_stats(readings):
    high = readings[0]
    low = readings[0]
    total = 0
    
    for temp in readings:
        if temp > high:
            high = temp
        if temp < low:
            low = temp
        total += temp
    
    average = total / len(readings)
    return {"high": high, "low": low, "average": average}

def format_report(city, readings):
    stats = get_weekly_stats(readings)
    converted = [celsius_to_fahrenheit(t) for t in readings]
    
    print("City: " + city)
    print("High: " + str(stats["high"]) + "°C / " + str(celsius_to_fahrenheit(stats["high"])) + "°F")
    print("Low: " + str(stats["low"]) + "°C / " + str(celsius_to_fahrenheit(stats["low"])) + "°F")
    print("Average: " + str(round(stats["average"], 1)) + "°C")
    print("All readings (°F): " + ", ".join([str(round(t, 1)) for t in converted]))

weekly_readings = [18, 22, 19, 25, 21, 17, 23]
format_report("San Diego", weekly_readings)
