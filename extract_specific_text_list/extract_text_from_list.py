#!/usr/bin/python
import re
list_of_names= ['<a href="download.php/947983/adam.zip"><img "="" alt="Download"  src="browse_dl.png" style="style=" title="Download Adam"/></a>',
'<a href="download.php/947981/barb.zip"><img "="" alt="Download" src="browse_dl.png" style="style=" title="Download Barb"/></a>',
'<a href="download.php/947972/chris.zip"><img "="" alt="Download" src="browse_dl.png"  style="style=" title="Download Chris"/></a>',
     '<a href="download.php/947971/dan.zip"><img "="" alt="Download" src="browse_dl.png" style="style=" title="Download Dan"/></a>']

links=[]
names=[]


for row in list_of_names:
    links.append([x.strip() for x in re.split(r"href=\"(.*)\"><img", row)][1])
    names.append([x.strip() for x in re.split(r"title=\"Download (.*)\"\/>", row)][1])

desired_list=list(tuple(zip(links,names)))
print(desired_list)
# [('download.php/947983/adam.zip', 'Adam'), ('download.php/947981/barb.zip', 'Barb'), ('download.php/947972/chris.zip', 'Chris'), ('download.php/947971/dan.zip', 'Dan')]
