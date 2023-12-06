#!/bin/bash
number=$1
function sum_of_digits(){
	num=$1
	sum=0
	while [ $num -gt 0 ]; do
	digit=$((num %10))
	sum=$((sum + digit))
	num=$((num/10))
done
echo $sum
}
result=$(sum_of_digits $number)
echo "Sum of digits is :" $result
