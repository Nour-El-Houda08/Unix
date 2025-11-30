# Guessing Game

A simple Bash shell script game where you try to guess how many files are in the current directory.

## Description

This interactive guessing game challenges you to determine the number of files in the current directory. The script will provide feedback on whether your guess is too high or too low until you find the correct number.

## Features

- Interactive command-line interface
- Input validation to ensure only numbers are accepted
- Helpful feedback (too high/too low) to guide your guesses
- Simple and clean code structure

## Requirements

- Bash shell (typically available on Linux, macOS, and Windows WSL)
- Standard Unix/Linux commands (`ls`, `wc`)

## Usage

1. Save the script to a file (e.g., `guessing_game.sh`)
2. Make the script executable:
   ```bash
   chmod +x guessing_game.sh
   ```
3. Run the script:
   ```bash
   ./guessing_game.sh
   ```
4. Follow the prompts to enter your guesses

## How to Play

1. The game will start and ask you to guess how many files are in the current directory
2. Enter a number and press Enter
3. The game will tell you if your guess is too high or too low
4. Keep guessing until you find the correct number
5. You'll receive a congratulatory message when you guess correctly

## Example

```
Welcome to the Guessing Game!
How many files are in the current directory?
Enter your guess: 5
Your guess is too low. Try again!
Enter your guess: 15
Your guess is too high. Try again!
Enter your guess: 10
Congratulations! You guessed correctly. There are 10 files in the current directory.
```

## Notes

- The script counts only visible files (not hidden files starting with `.`)
- Each file and directory is counted as one item
- The game runs in the current working directory where the script is executed

## License

This is a simple educational script. Feel free to use and modify as needed.
