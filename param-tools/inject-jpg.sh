#!/bin/bash
# filename: inject-jpg.sh
# command : inject-jpg.sh param-base.lfs param-new.lfs
# Ketut P. Kumajaya <ketut.kumajaya @ xda-developers.com>, Sept 2012

count=(`grep 'count' mapping.txt | cut -f 2 -d =`)
echo "-I- jpg count=$count"

cat $1 > $2
for (( i = 0 ; i < $((count)) ; i++ )); do
  start=(`grep jpg$i mapping.txt | cut -f 2 -d = | cut -f 1 -d :`)
  end=(`grep jpg$i mapping.txt | cut -f 2 -d = | cut -f 2 -d :`)
  size=(`grep jpg$i mapping.txt | cut -f 2 -d = | cut -f 3 -d :`)
  nsize=$(stat -c%s $i.jpg)
  if [ "$nsize" -gt "$size" ]; then
    echo "-E- $i.jpg greater than $size !"
    rm -f $2
    exit
  elif [ "$nsize" -lt "$size" ]; then
    echo "-I- resize $i.jpg"
    for (( s = 0 ; s < $((size - nsize)) ; s++ )); do
      echo -n $'\xFF' >> $i.jpg
    done
  fi
  echo "-I- $i.jpg size=$size"
  dd if=$i.jpg of=$2 bs=1 seek=$start conv=notrunc
done 
