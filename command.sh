#!/bin/bash

echo "pls enter the file name:"
read file

echo "AWK command:"
awk '{print}' $file

echo "pls enter the word to replace"
read first
echo "pls enter the word to replace '$first' with"
read second

echo "SED command:"
sed  -i "s/$first/$second/g" $file 
cat $file

echo "Grep command:"
echo " lets use grep to check the changes in the file '$second' "
grep -i $second $file
