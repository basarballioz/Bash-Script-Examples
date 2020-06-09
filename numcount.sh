#!/bin/bash
#BBallioz

# this scripts counts the number of the digits of a number
Count=0
read -p 'enter the number: ' Num
Number=$Num
while [ "$Num" -gt "0" ];
do
    R=$(( Num % 10 ))
    MZ=$(( Num - R ))
    Num=$(( MZ / 10 ))
    Count=$(( Count + 1))
done
echo "The number $Number has $Count digits."
