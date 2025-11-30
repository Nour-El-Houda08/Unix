#!/bin/bash

count_files() {
    echo $(ls -1 | wc -l)
}

play_guessing_game() {
    local actual_count=$(count_files)
    local user_guess
    local guess_correct=false
    
    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"
    
    while [[ $guess_correct == false ]]; do
        read -p "Enter your guess: " user_guess
        
        if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi
        
        if [[ $user_guess -lt $actual_count ]]; then
            echo "Your guess is too low. Try again!"
        elif [[ $user_guess -gt $actual_count ]]; then
            echo "Your guess is too high. Try again!"
        else
            guess_correct=true
            echo "Congratulations! You guessed correctly. There are $actual_count files in the current directory."
        fi
    done
}

play_guessing_game
