# Copyright (c) 2015 Angus H. (4148)
# Distributed under the GNU General Public License v3.0 (GPLv3).

from datetime import date, timedelta
from random import randint
from time import sleep
import sys
import subprocess
import os

# returns a date string for the date that is N days before STARTDATE
def get_date_string(n, startdate):
	d = startdate - timedelta(days=n)
	rtn = d.strftime("%a %b %d %X %Y %z -0400")
	return rtn

# main app
def main(argv):
    i = 1
    startdate = date.today()
    curdate = get_date_string(i, startdate)
    print(curdate)

if __name__ == "__main__":
	main(sys.argv[1:])
