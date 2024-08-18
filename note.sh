#!/bin/bash

current_date=$(date +'%Y-%m-%d')
# Define the file name
file_name="daily-note-${current_date}.txt"

# Define the directory path
directory_path="/Users/freddylopez/Documents/Projects/notes-project/notes/"

# Check if the file exists
if [ -f "${directory_path}/${file_name}" ]; then
	echo ""
else
	# Create the file
	touch "${directory_path}/${file_name}"
	echo "New note ${file_name} has been created."
fi

if [ $# -gt 0 ]; then
	# Concatenate all command-line arguments into a single note
	user_input="$*"
else
	# Prompt the user to enter a note
	echo "Enter your note (press Enter to save and exit):"
	read user_input
fi
# Write the input to the file and save it
current_time=$(date +'%H:%M')
echo "${current_time}  --  ${user_input}" >>"${directory_path}/${file_name}"
echo "Your note has been saved to ${file_name}."
