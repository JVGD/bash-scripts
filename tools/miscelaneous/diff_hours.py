#!/bin/python
import datetime
import argparse


def get_hour_and_minutes(moment):
    if moment == "now":
        t_now = datetime.datetime.now()
        hour = int(t_now.strftime("%H"))
        minute = int(t_now.strftime("%m"))

    else:
        moment = list(moment)
        if len(moment) == 4:
            moment.insert(0,"0")
        hour = int("".join(moment[0:2]))
        minute = int("".join(moment[3:]))
    
    return hour, minute


t = datetime.time(14, 50)

# Parsing args
parser = argparse.ArgumentParser()
parser.add_argument("init_time", help="Init time in hour and minutes XX:XX")
parser.add_argument("end_time", help="End time in hour and minutes XX:XX, if \"now\", it takes current time")
args = parser.parse_args()

# Getting the args
init_t = args.init_time
end_t = args.end_time

# Getting their info
init_t_hour, init_t_minute = get_hour_and_minutes(init_t)
end_t_hour, end_t_minute = get_hour_and_minutes(end_t)

print (init_t_hour, init_t_minute)
print (end_t_hour, end_t_minute)

# Init the datetime object
t1 = datetime.timedelta(hours=init_t_hour, minutes=init_t_minute)
t2 = datetime.timedelta(hours=end_t_hour, minutes=end_t_minute)

# Interval
delta = t2 - t1
hour_fraction = "%.2f" % float(delta.seconds / 60 / 60)

# Printing
print("Time elapsed           : " + str(delta))
print("Time in hours fraction : " + str(hour_fraction))
