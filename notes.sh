#!/bin/bash

current_date=$(date +'%Y-%m-%d')
# Define the file name
file_name="daily-note-${current_date}.txt"

# Define the directory path
directory_path="/Users/freddylopez/Documents/Projects/notes-project/notes/"

# Check if the file exists
if [ -f "${directory_path}/${file_name}" ]; then
	echo " -- Contents of todays note -- "
	echo " "
	cat "${directory_path}/${file_name}"
else
	echo "Daily note for ${current_date} has not been created yet."
fi
