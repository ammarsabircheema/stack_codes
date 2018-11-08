# This code will check if the script update.py is running or not and if it is not running it will compile it
#!/usr/bin/python
import psutil
import sys
from subprocess import Popen

for process in psutil.process_iter():
    if process.cmdline() == ['python', 'update.py']:
         sys.exit('Process found: exiting.')

print('Process not found: starting it.')
Popen(['python', 'update.py'])

