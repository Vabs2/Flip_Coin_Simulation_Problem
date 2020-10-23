#! /bin/bash

read -p "Enter Number : " number

totalHeads=0
totalTails=0

if [[ $number ]] && [ $number -eq $number 2>/dev/null ] && [ $number -gt 0 ]; then
	for (( i=0; i<$number; i++ ))
	do

		isCheck=$((RANDOM%2))

		if [ "$isCheck" -eq 0 ]; then
			totalHeads=$(($totalHeads + 1))
		else
			totalTails=$(($totalTails + 1))
		fi
	done

	echo "Out Of $number : Heads Won $totalHeads times : Tails won $totalTails times"
else
	echo "Wrong Input !! Enter Number Above 0 Only. E.g  15 "
fi
