#!/bin/bash
# filename: extract-jpg.sh
# command : extract-jpg.sh param-base.lfs
# Ketut P. Kumajaya <ketut.kumajaya @ xda-developers.com>, Sept 2012
# http://z4ziggy.wordpress.com/2010/09/18/looking-into-param-lfs-file/

starts=(`grep -abo $'\xFF\xD8' $1 | cut -f 1 -d :`)
ends=(`grep -abo $'\xFF\xD9' $1 | cut -f 1 -d :`)

echo "count=$((${#starts[@]}))" > mapping.txt
for (( i = 0 ; i < ${#starts[@]} ; i++ )); do
  end=$((ends[$i] + 2))
  count=$((end - starts[$i]))
  echo "jpg$i=$((starts[$i])):$((ends[$i])):$count" >> mapping.txt
  echo "-I- Extracting $i.jpg"
  dd if=$1 bs=1 skip=${starts[$i]} count=$count > $i.jpg
done 
