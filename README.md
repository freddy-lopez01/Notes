# Notes Project

This project consists of two bash scripts designed to help you create, save, and view daily notes in a specified directory.

## Project Directory Structure

/Users/freddylopez/Documents/Projects/notes-project/
└── notes/
    └── daily-note-YYYY-MM-DD.txt

### Script 1: `note.sh`

This script creates a daily note file and appends user input (notes) to it. If the file for the current date already exists, it will simply append the new note to the existing file.

#### Usage

```bash
$ note [your note here]
```
If you provide a note as a command-line argument, it will be saved directly.  
If you don't provide a note as a command-line argument, you will be prompted to enter one interactively.

### How It Works
1. The script first checks if a file named `daily-note-YYYY-MM-DD.txt` exists in the specified directory.
2. If the file exists, it appends the new note with the current time.
3. If the file does not exist, it creates the file and then appends the note.
4. The script outputs the status of the note creation.

### Script 2: `notes.sh`

This script displays the contents of the daily note file for the current date. If the file does not exist, it informs you that the note for the day has not been created yet.

#### Usage

```bash
$ note
```
### How It Works

1. The script checks if a file named `daily-note-YYYY-MM-DD.txt` exists in the specified directory.
2. If the file exists, it displays the contents of the file.
3. If the file does not exist, it informs you that the daily note has not been created yet.

### Directory Path

Both scripts use the following directory path to store and retrieve the daily notes:

```bash
/Users/freddylopez/Documents/Projects/notes-project/notes/
```
NOTE: For this personal project, notes are stored in the project directory. However,this will be stored in usr/local/notes/ 
