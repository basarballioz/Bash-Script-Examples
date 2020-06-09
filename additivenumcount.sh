#!/bin/bash

Count_digits=0
read -p 'enter the number: ' Num
Number=$Num
while [ "$Num" -gt "0" ];
do
    # find the right most digit:
    Right_digit=$Num
    while [ "$Right_digit" -gt "10" ];
    do
        Right_digit=$(( Right_digit - 10 ))
        #echo $Right_digit
    done
    R=$Right_digit
    Make_right_digit_Zero=$(( Num - R ))
    # drop the zero at the right
    Quotient=0
    Dummy_MZ=$Make_right_digit_Zero
    while [ "$Dummy_MZ" -gt "0" ];
    do
        Dummy_MZ=$(( Dummy_MZ - 10 ))
        #echo $Dummy_MZ
        Quotient=$(( Quotient + 1 ))
        #echo $Quotient
    done
    Count_digits=$(( Count_digits + 1))
    Num=$Quotient
done
echo "The number $Number has $Count_digits digits."