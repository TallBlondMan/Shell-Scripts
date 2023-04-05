#!/bin/sh 

echo "Let's deal with Variables!"
echo "Hello, I'm $0, pleased to meet you"
echo "This script was run with $# parameters"
# Check if there is a second parameter - this could be omitted with the "if" below, but well...
# It's practice
if [ $2 ]; then 
	echo "The second parameter is $2"
else 
	echo "There is no second parameter"
fi
# Check if there are some parameters
if [ -n $@ ]; then 
	echo "Overall parameters are $@" 
fi
echo "My PID: $$"
echo "Last process ended with status $!"


