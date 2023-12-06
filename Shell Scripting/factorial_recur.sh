#!/bin/bash
factorial_recursive() {
  num=$1
  if [[ $num -eq 0 || $num -eq 1 ]]; then
    echo 1
  else
    local prev=$((num - 1))
    local result=$(factorial_recursive $prev)
    echo $((num * result))
  fi
}read -p "Enter a number: " num
result_recursive=$(factorial_recursive $num)
echo "Factorial of $num (with recursion) is: $result_recursive”
