#!/bin/sh
echo "Give me your upper limit:"
read LIMIT
RANDOM=$$
MY_NUMBER=$(($RANDOM%$LIMIT))
echo "Try to guess my number"
read GUESS
while [ $GUESS != $MY_NUMBER ]; do
if [ $GUESS -gt $MY_NUMBER ]; then
	echo "My number is smaller, try again"
	read GUESS
elif [ $GUESS -lt $MY_NUMBER ]; then
	echo "Nah mate, my number is bigger, try again"
	read GUESS
fi
done
echo "Nice, you got my number: $MY_NUMBER :)"
