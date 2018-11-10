#!/bin/bash
egrep -v "/db_xref= taxon"  $1| awk -F= '/GeneID:|(gene|protein_id)=/{print $2}' | sort -u > file1
sed -n '/product/,/protein_id/p' $1|grep -v protein_id |sed 's/.*=//' >file2
awk '/translation/,/ORIGIN/{if(/translation|ORIGIN/) next; print}' $1 >file3
head -3 file1 && cat file2 && printf "\"" && cat file3 |tr -d " \t\n\r" &&   echo && rm -rf file1 file2 file3
