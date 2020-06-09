#!/bin/bash
#Bballioz

#USING OPENSSL
function password(){
read -p "Please enter the length of the password and how many samples you want: " Len Count
for p in $(seq 1 $Count);
do
    openssl rand -hex 48 | cut -c1-$Len
done
}
password
