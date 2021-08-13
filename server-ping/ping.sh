#!/bin/bash

declare -a arr=("192.168.3.49" "192.168.3.50" "192.168.3.33" "192.168.3.46" "192.168.3.44" "192.168.3.45" "192.168.3.48" "192.168.3.47")

FILE=errors.txt

touch $FILE

while true
do
	for i in "${arr[@]}"
	do
   	DATE=$(date '+%d/%m/%Y %H:%M:%S')
   	ping -c 1 $i &> /dev/null
   	if [[ $? -ne 0 ]]; then
      	  echo "[ERROR] Node Down " $i $DATE
      	  echo "[ERROR] Node Down " $i $DATE >> $FILE
   	else
          echo "[OK] NODE RESPONDING "$DATE $i
   	fi
      	  sleep 1
	done
done
