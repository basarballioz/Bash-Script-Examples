#!/bin/bash
#BBallioz

read -p 'Please enter the first number: ' NUM1
read -p 'Please enter the second number: ' NUM2
if [ "$NUM1" -gt "$NUM2" ];
then
	echo "$NUM1 (first number) is greater than or equal to $NUM2 (second number)."
else
	echo "$NUM1 (first number) is less than $NUM2 (second number)."
fi

