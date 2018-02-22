#!/bin/bash

# Program to access a file and display its last modification date or else if the file is not present then display a proper message.

printf "Enter the name of file: "
read fileName

if [ -f $fileName ]; then
	printf "last modified: "
	echo `stat -c %y $fileName`
else
	printf "File not found."
fi

