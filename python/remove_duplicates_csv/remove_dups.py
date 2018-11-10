#!/usr/bin/python
import json
with open('input_file.txt', 'r') as myfile:
     data=myfile.read().replace('\n', '')

str1= data.replace('[','')
str2= str1.replace(']',',')
list1=str2.split(',')
list2=list(set(k))
list3=[x.strip() for x in list2 if x.strip()]
list4=[float(i) for i in list3]
with open('out_put_file.txt','w') as f:
     f.write(json.dumps(list4))

# out_put_file.txt contains:
# [13181.818181818182, 1375055.330634278, 89.06882591093118, 152.60115606936415]  
