#!/bin/bash

echo "Pls enter the number of Days:"
read days

echo "the list of files:"

numfirst=1
numsecond=10

listing(){

	find /home/knoldus -type f -mtime +$days >> list.txt
	awk  -v first="${numfirst}"  -v second="${numsecond}" 'NR==first, NR==second {print NR, $0}' list.txt

	echo "DO you want to continue?(Yes/No)"
	read ans
	if [[ $ans == "y" || $ans == "Y" || $ans == "yes" || $ans == "Yes" ]]; then
		numfirst=`expr $numsecond + 1`
		numsecond=`expr $numsecond + 10`
		listing
	else
		echo "Ending"
	fi

	}
listing






