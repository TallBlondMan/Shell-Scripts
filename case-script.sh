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
			*)
				echo "I don't know no $ANIMAL jokes :/"
				;;
		esac
		;;
	bad)
		echo "Ahhh, that's no good, wanna hear a joke?"
		read JOKE
		case $JOKE in
			yes)
				echo "Knock, knock..."
				read ANSWR
				case $ANSWR in 
					"who's there?")
						echo "Yo mama FAT and mine NTFS"
						;;
					*)
						echo "Yo mood so bad you can't even answere correctly... good luck"
						;;
				esac
				;;
			no)
				echo "ok."
				;;
			*)
				echo "..."
				;;
		esac
		;;
	terrible)
		echo "Damn Human, go here - https://www.recdit.com/r/aww and look at some kittens, I'll work for you"
		;;
	*)
		echo "Emotion not recognized, try again"
		;;
esac
echo "Program ended, have a great day!"



