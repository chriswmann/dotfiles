#!/usr/bin/python3
# -*- coding: utf-8 -*-


import datetime as dt
import os
import requests
import sys

def get_location():
    args = sys.argv[1:]
    if args:
        location = args[0]
    else:
        location = "Oakham, Rutland"

    return location

class Weather:

    def __init__(self, **kwargs):
        self.__dict__.update(**kwargs)

    def __repr__(self):

        return f"{self.__class__.__name__}({self.__dict__})"

def get_weather_data(location: str, api_key=str) -> dict:
    
    
    api_url = f"https://api.openweathermap.org/data/2.5/weather?q={location}&appid={api_key}"
    response = requests.get(api_url)

    return response.json()


def celcius(kelvin: float) -> float:
    
    return kelvin - 273.15


def get_rain(weather: Weather) -> str:

    try:
        weather.rain
        return " ☂️"
    except AttributeError:
        return "🌂"


def build_weather_str(weather: Weather) -> str:

    temp = f"🌡→{celcius(weather.temp):.0f}℃ ↓{celcius(weather.temp_min):.0f}℃ ↑{celcius(weather.temp_max):.0f}℃"

    sunrise = dt.datetime.fromtimestamp(weather.sunrise).time().strftime('%H:%M')
    sunset = dt.datetime.fromtimestamp(weather.sunset).time().strftime('%H:%M')

    rain = get_rain(weather)

    windspeed = f"🌬 {weather.speed:.0f}m/s"

    daylight = f"🌞{sunrise} 🌙{sunset}"

    output = f"{temp} | {windspeed} | {daylight}"
    #output = f"{temp} | {rain} | {windspeed} | {daylight}"

    return output


def main():

    api_key = os.environ.get("OPEN_WEATHER_API_KEY")
    
    location = get_location()
    
    weather_data = get_weather_data(location, api_key)

    keep_weather_data = weather_data['main'] | weather_data['wind'] | weather_data['sys']

    weather = Weather(**keep_weather_data)

    weather.location = location

    weather_str = build_weather_str(weather)

    print(weather_str)


if __name__ == '__main__':
    main()

