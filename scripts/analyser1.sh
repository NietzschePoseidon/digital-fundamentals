#!/bin/bash

path=~/DFM/LAB04/

for i in $(ls $path)
do
  for file in $(cat $path$i)
  do
    name=$(echo $file | cut -d ":" -f"1")
    age=$(echo $file | cut -d ":" -f"2")
    mail=$(echo $file | cut -d ":" -f"3")
    echo -e "Имя: $name, возраст: $age, почта: $mail"
  done
done
