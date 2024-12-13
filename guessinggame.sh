#!/bin/bash

function file_count {
    echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
correct=$(file_count)  
while true; do
    echo "Guess how many files are in the current directory:"
    read guess

    if [[ $guess -eq $correct ]]; then
        echo "Congratulations! You guessed it right."
        break
    elif [[ $guess -lt $correct ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done
