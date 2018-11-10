#!/usr/bin/python
with open('data.csv', 'r') as sourcefile:
     source = sourcefile.read().splitlines()

with open('keys.txt', 'r') as keyfile:
     keys = keyfile.read().split()

with open('MyOutFile', 'w') as outfile:
     for line in source:
         if line.split():
             if line.split()[0] in keys:
                 outfile.write(line + "\n")
outfile.close()
