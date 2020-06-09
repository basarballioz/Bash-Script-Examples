#!/bin/bash
#BBallioz

echo "Please enter the number: "
read Number

g=$Number 
s=0

re='^[0-9]+$'
if ! [[ $Number =~ $re ]] ; then
   echo "It is not an integer " >&2; exit 1
fi

while [ $Number -gt 0 ] 
do
     
    k=$(( $Number % 10 ))  
    Number=$(( $Number / 10 )) 
    s=$(( $s + $k ))  
done
echo  "Sum of the digits of $g are: $s"