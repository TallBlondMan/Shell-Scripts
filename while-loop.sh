#!/bin/sh
INPUT_STRING=Hello
echo "Please type something"
read INPUT_STRING
while [ "$INPUT_STRING" != "bye" ]; do
	echo "Please type something(type bye to exit)"
  read INPUT_STRING
  echo "$INPUT_STRING"
done
