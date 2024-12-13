#!/bin/bash

# Function to count files in the current directory
count_files() {
    local file_count=$(ls | wc -l)
    echo "$file_count"
}

# Main game function
play_guessing_game() {
    local total_files=$(count_files)
    local guess=-1

    echo "Welcome to the File Counting Guessing Game!"
    echo "How many files are in the current directory?"

    while [ $guess -ne $total_files ]; do
        read -p "Enter your guess: " guess

        if [ $guess -lt $total_files ]; then
            echo "Too low! Try again."
        elif [ $guess -gt $total_files ]; then
            echo "Too high! Try again."
        fi
    done

    echo "Congratulations! You guessed the correct number of files: $total_files"
}

play_guessing_game
