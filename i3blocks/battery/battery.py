import psutil
import time

battery = psutil.sensors_battery()

percent = f'{battery.percent:.0f}'
time_left = time.strftime("%H:%M", time.gmtime(battery.secsleft))
status = "Charging" if battery.power_plugged else time_left + ' remaining'
icon = '🔋' if int(battery.percent) > 25 else '🪫'

print(f'{icon}{percent}% | {status}')
