#!/bin/bash

count_files() {
    local file_count=$(ls -1 | wc -l)
    echo "$file_count"
}

guessing_game() {
    local total_files=$(count_files)
    local guess
    
    echo "Welcome to the Guessing Game!"
    echo "Try to guess the number of files in the current directory."
    
    while true; do
        read -p "Enter your guess: " guess
        
        if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi
        
        if [[ "$guess" -lt "$total_files" ]]; then
            echo "Too low! Try again."
        elif [[ "$guess" -gt "$total_files" ]]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed the correct number of files: $total_files"
            break
        fi
    done
}
guessing_game
