#!/bin/bash

path=~/DFM/LAB04/
nge18=0
nlt18=0

for i in $(ls $path)
do
  for file in $(cat $path$i)
  do
    age=$(echo $file | cut -d ":" -f"2")
    if [[ $age -ge "18" ]]
    then
      nge18=$(($nge18+1))
    else
      nlt18=$(($nlt18+1))
    fi
  done
done
echo -e "Совершеннолетних: $nge18, неовершеннолетних: $nlt18"
