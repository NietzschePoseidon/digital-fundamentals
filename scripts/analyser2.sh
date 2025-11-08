#!/bin/bash

path=~/DFM/LAB04/

for i in $(ls $path)
do
  for file in $(cat $path$i)
  do
    mail=$(echo $file | cut -d ":" -f"3")
    if [[ $mail =~ "@spbstu.ru" ]]
    then
      echo -e "Почта: $mail"
    fi
  done
done
