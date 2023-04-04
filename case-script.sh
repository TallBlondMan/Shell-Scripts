#!/bin/sh

echo "Tell me how are you fealing today..."
read EMOTION
case $EMOTION in
	amazing)
		echo "Great! Then I will be of no help :)"
		;;
	good)
		echo "Nice, I have a fun fact for you then, you prefer dogs or cats?"
		read ANIMAL
		case $ANIMAL in 
			dogs)
				echo "Some dogs are fast enough to beat a cheeta in a race! :O"
				;;
			cats)
				echo "Cats can jump 5 times their own height! :O"
				;;
		esac
		;;
	bad)
		echo ""

