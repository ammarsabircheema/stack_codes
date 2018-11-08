# Extract specific text from list 
- The original question is [here](https://stackoverflow.com/questions/53016774/how-to-extract-specific-text-in-a-list-created-by-beautifulsoup/53020881#53020881).
- The user has a list like one given below:
```
list_of_names= ['<a href="download.php/947983/adam.zip"><img "="" alt="Download"  src="browse_dl.png" style="style=" title="Download Adam"/></a>',
'<a href="download.php/947981/barb.zip"><img "="" alt="Download" src="browse_dl.png" style="style=" title="Download Barb"/></a>',
'<a href="download.php/947972/chris.zip"><img "="" alt="Download" src="browse_dl.png"  style="style=" title="Download Chris"/></a>',
     '<a href="download.php/947971/dan.zip"><img "="" alt="Download" src="browse_dl.png" style="style=" title="Download Dan"/></a>']
```
- The user wanted to extract specific text from as given below:
```
[('download.php/947983/adam.zip', 'Adam')
('download.php/947981/barb.zip', 'Barb'),
('download.php/947972/chris.zip', 'Chris'),
('download.php/947971/dan.zip', 'Dan')]
```
- The solution to this problem is given in **extract_text_from_list.py**.


