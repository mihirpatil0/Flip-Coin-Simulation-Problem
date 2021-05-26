#!/bin/bash

echo "Welcome to Flip Coin Simulation - This problem displays the winner Heads or Tails"

function Case()
{
	case $1 in
		1) echo "HEAD";;
		0) echo "TAIL";;
	esac
}

RandomOne=$((RANDOM%2))
echo "Player Chooses : `Case $RandomOne`"
RandomTwo=$((RANDOM%2))
echo "Fliped Coin Shows : `Case $RandomTwo`"

if [ $RandomOne == $RandomTwo ]
then
	echo "Player : Wins"
else
	echo "Player : Loose"
fi
