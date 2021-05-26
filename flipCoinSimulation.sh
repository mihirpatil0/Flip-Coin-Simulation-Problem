#!/bin/bash

echo "Welcome to Flip Coin Simulation - This problem displays the winner Heads or Tails"

function Case()
{
	case $1 in
		1) echo "HEAD";;
		0) echo "TAIL";;
	esac
}
HEAD=0
TAIL=0
for (( i=1; i<=25; i++ ))
do
	RandomOne=$((RANDOM%2))
#	echo "Player Chooses : `Case $RandomOne`"
	RandomTwo=$((RANDOM%2))
#	echo "Fliped Coin Shows : `Case $RandomTwo`"

	if [ $RandomOne == $RandomTwo ]
	then
		((++`Case $RandomOne`))
	fi
done
won=$(($HEAD+$TAIL))
echo "By Flipping a Coin $(($i-1)) times Player has won $won Times"
echo "By Selecting HEAD $HEAD times and TAIL by $TAIL times"

