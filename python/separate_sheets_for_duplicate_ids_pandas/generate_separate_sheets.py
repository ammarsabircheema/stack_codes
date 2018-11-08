#!/usr/bin/python
from numpy import nan
import pandas as pd

my_df=pd.DataFrame({'ID':['Sample1', 'Sample1', 'Sample1', 'Sample1', 'Sample2', 'Sample2', 'Sample2', 'Sample2', 'Sample3', 'Sample3'],
'Purchase':[4, 5, 6, 7, 8, 9, 10, 11, 12, 13],'item':['Item1', 'Item2', nan, 'Item4', 'Item5', 'Item6', 'Item7', nan, nan, nan],})
my_df
      ID        Purchase   item
0     Sample1         4  Item1
1     Sample1         5  Item2
2     Sample1         6    NaN
3     Sample1         7  Item4
4     Sample2         8  Item5
5     Sample2         9  Item6
6     Sample2        10  Item7
7     Sample2        11    NaN
8     Sample3        12    NaN
9     Sample3        13    NaN
dict_of_dataframe = {k: v for k, v in my_df.groupby('ID')} # Group based on ID, 
for key,value in dict_of_companies.items():
    with open(key, 'w+') as f:
        f.write(str(value))

f.close()
