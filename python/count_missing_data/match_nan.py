# For columns in pandas (python data analysis library) you can use:

In [3]: import numpy as np
In [4]: import pandas as pd
In [5]: df = pd.DataFrame({'a':[1,2,np.nan], 'b':[np.nan,1,np.nan]})
In [6]: df.isnull().sum()
Out[6]:
a    1
b    2
dtype: int64

# For a single column or for sereis you can count the missing values as shown below:

In [1]: import numpy as np
In [2]: import pandas as pd
In [3]: s = pd.Series([1,2,3, np.nan, np.nan])

In [4]: s.isnull().sum()
Out[4]: 2
