#!/usr/bin/python3
import re 
fasta_file = open("fasta_file",'r')
chk = fasta_file.read()
k2=re.split(r'ERR\d+\.\d+;barcodelabel=R{0,9}.*;', chk, flags=re.MULTILINE)
line = [i.replace('\n','') for i in k2]
del line[0]
for i,name in enumerate(line):
    f = open("file"+str(i+1)+".txt","w")
    f.write(name+"\n")
    f.close() 
