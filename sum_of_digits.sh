#!/bin/bash
#BBallioz

read -p "Enter the number: " num

if ! [[ $num =~ ^[0-9]+$ ]]
    then
        echo "You must enter an INTEGER only!"
fi

for((i=0;i<${#num};i++)); 

do 
((sum+=${num:i:1})); 
done

if  [[ $num =~ ^[0-9]+$ ]]
    then
        echo "Sum of digits: $sum"
fi

read a