# Extract data from file  without dereplicating fields.
The original question is [here](https://stackoverflow.com/questions/53017435/how-to-pull-data-from-file-without-dereplicating-with-python/53037821#53037821).
The user wanted to extract data from file without dereplicating fields, let's say we have a file like one given below:
```
HEADER    Signaling Protein                       03-May-12   4F0A
TITLE     Crystal Structure Of Xwnt8 In Complex With The Cysteine    
TITLE    2 rich Domain Of Frizzled 8                                  
AUTHOR    C.Y.Janda,D.Waghray,A.M.Levin,C.Thomas,K.C.Garcia          
REMARK = 1 NCBI PDB FORMAT VERSION 6.0
REMARK = 2 NOTE:  NCBI-MMDB PDB-Format File derived from ASN.1
REMARK = 3 Refer to original ASN.1 file or PDB file for data records


HELIX    1   1 GLN A   62  HIS A   70  1                                    9
HELIX    2   2 PHE A   72  GLN A   79  1                                    8
HELIX    3   3 LEU A   84  TYR A   92  1                                    9
HELIX    4   4 SER A  109  TYR A  125  1                                   17 
HELIX    1   1 PRO B   34  ALA B   42  1                                    9
HELIX    2   2 SER B   43  PHE B   59  1                                   17
HELIX    3   3 ARG B   84  SER B  106  1                                   23
HELIX    4   4 ALA B  137  PHE B  147  1                                   11
HELIX    5   5 ALA B  157  GLU B  175  1                                   19
HELIX    6   6 PHE B  202  GLN B  215  1                                   14
HELIX    7   7 GLY B  236  SER B  244  1                                    9
ATOM      1  N   CYS A  35     -46.772 -32.953  13.444  1.00118.86           N  
ATOM      2  CA  CYS A  35     -45.589 -33.712  13.063  1.00132.02           C  
ATOM      3  C   CYS A  35     -45.956 -34.934  12.237  1.00141.34           C  
ATOM      4  O   CYS A  35     -47.000 -35.548  12.450  1.00140.11           O  
SEQRES = 1 A  132  ALA SER ALA LYS GLU LEU ALA CYS GLN GLU ILE THR VAL
SEQRES = 2 A  132  PRO LEU CYS LYS GLY ILE GLY TYR ASN TYR THR TYR MET
SEQRES = 25 B  316  HIS PHE CYS ALA
ATOM      5  CB  CYS A  35     -44.802 -34.155  14.301  1.00137.04           C  
ATOM      6  SG  CYS A  35     -43.999 -32.812  15.204  1.00163.69           S  
ATOM      7  N   GLN A  36     -45.100 -35.263  11.277  1.00149.21           N  
ATOM      8  CA  GLN A  36     -45.159 -36.550  10.594  1.00144.14           C  
ATOM      9  C   GLN A  36     -43.746 -37.119  10.503  1.00143.70           C  
SHEET    1   A 1 CYS A  35  ILE A 38  0
SHEET    2   A 1 ASN A  49  TYR A 52  0
SHEET    1   B 1 GLY B 121  ARG B126  0
SHEET    2   B 1 GLY B 127  GLY B131  0
SHEET    3   B 1 THR B 176  HIS B184  0
```

From this file the user wants to extract following fields without dereplicating:

```
REMARK
HELIX
SEQRES
SHEET
```
The solution to this problem is given in **extract_data.py**.
