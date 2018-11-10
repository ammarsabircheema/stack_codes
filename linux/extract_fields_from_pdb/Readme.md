# Import records from PDB file

- The file is given [here](https://files.rcsb.org/view/6C4A.pdb).

- The user wants to extract **HETNAM** and **HETSYN** field the PDB file. 

- These fields **HETNAM** and **HETSYN** can be extracted from PDB file using **sed** command given below:

```
sed  -n -e '/HETNAM/ p' -e '/HETSYN/ p'  filename.pdb
```
