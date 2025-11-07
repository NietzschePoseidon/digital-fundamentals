#!/bin/bash

path=~/DFM/LAB04/
young=100
old=0

for i in $(ls $path)
do
  for file in $(cat $path$i)
  do
    age=$(echo $file | cut -d ":" -f"2")
    if [[ $age -gt $old ]]
    then
      old=$age
      name1=$(echo $file | cut -d ":" -f"1")
      mail1=$(echo $file | cut -d ":" -f"3")
    fi
    if [[ $age -lt $young ]]
    then
      young=$age
      name2=$(echo $file | cut -d ":" -f"1")
      mail2=$(echo $file | cut -d ":" -f"3")
    fi
  done
done
echo -e "Молодой: $name2, $young, $mail2, старый: $name1, $old, $mail1"
