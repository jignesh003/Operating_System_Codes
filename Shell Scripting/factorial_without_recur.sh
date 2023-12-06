#!/bin/bash
factorial_iterative() {
  local num=$1
  local result=1
  for ((i = 1; i <= num; i++)); do
    result=$((result * i))
  done
  echo $result
}
read -p "Enter a number: " num
result_iterative=$(factorial_iterative $num)echo "Factorial of $num (without recursion) is: $result_iterative"
