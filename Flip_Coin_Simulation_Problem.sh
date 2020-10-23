#! /bin/bash

totalHeads=0
totalTails=0

while [ "$totalHeads" -lt "21" -a "$totalTails" -lt "21" ]
do

	isCheck=$((RANDOM%2))

	if [ "$isCheck" -eq 0 ]; then
		totalHeads=$(($totalHeads + 1))
	else
		totalTails=$(($totalTails + 1))
	fi
done


echo "Heads got $totalHeads : Tails got $totalTails"


if [ "$totalHeads" -gt "$totalTails" ]; then
	wonBy=$(( "$totalHeads" - "$totalTails"))
	echo "Head Won by : $wonBy"

elif [ "$totalHeads" -lt "$totalTails" ]; then
        wonBy=$(( "$totalTails" - "$totalHeads"))
        echo "Tail Won by : $wonBy"

elif [ "$totalHeads" -eq "$totalTails" ]; then
        echo "Oops ! Its Tie "
fi
