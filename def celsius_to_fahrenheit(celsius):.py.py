def celsius_to_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_to_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def celsius_to_kelvin(celsius):
    return celsius + 273.15

def convert_temperature(value, from_unit, to_unit):
    if from_unit == to_unit:
        return value
    if from_unit == "celsius":
        if to_unit == "fahrenheit":
            return celsius_to_fahrenheit(value)
    elif to_unit == "kelvin":
        return celsius_to_kelvin(value)
    elif from_unit == "fahrenheit":
        if to_unit == "celsius":
            return fahrenheit_to_celsius(value)
        elif to_unit == "kelvin":
            celsius = fahrenheit_to_celsius(value)
            return celsius_to_kelvin(celsius)
    elif from_unit == "kelvin":
        if to_unit == "celsius":
            return value - 273.15
        elif to_unit == "fahrenheit":
                        celsius = value - 273.15
        return celsius_to_fahrenheit(celsius)

conversions = [
    (100, "celsius", "fahrenheit"),
    (32, "fahrenheit", "celsius"),
    (0, "kelvin", "celsius"),
    (373.15, "kelvin", "fahrenheit"),
]

for value, from_unit, to_unit in conversions:
    result = convert_temperature(value, from_unit, to_unit)
    print(str(value) + " " + from_unit + " = " + str(result) + " " + to_unit)