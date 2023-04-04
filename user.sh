#!/bin/sh
echo "MYVAR is: $MYVAR" 
MYVAR="Secret"
echo "MYVAR is: $MYVAR" 
echo "Give me your name:"
read NAME
echo "Thanks $NAME"
echo "Now let's make you a file with your name"
touch "${NAME}_file.txt" 
echo "Happy?"
read HAPPY
echo "Good $NAME"
echo "Now let's remove it :)"
rm "${NAME}_file.txt"
