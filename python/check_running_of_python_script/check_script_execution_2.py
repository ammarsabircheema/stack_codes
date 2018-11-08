# This script will check for any syntactical errors in script named update.py
#!/usr/bin/python
from subprocess import call
call(["python","-m","py_compile", "update.py"])
