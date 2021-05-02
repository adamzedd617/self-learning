#! /bin/bash

echo "Enter number: "
read nums

if [ $nums ]
then
  if (( $nums % 2 == 0 ))
    then
      echo "Even Number."
  else
      echo "Odd Number"
    fi
fi