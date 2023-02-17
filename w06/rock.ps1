#!/bin/bash

echo "Welcome to Rock, Paper, Scissors!"
echo "Enter your choice - 'r' for rock, 'p' for paper, or 's' for scissors."

# Define the choices
rock="r"
paper="p"
scissors="s"

while true; do
  # Get user's choice
  read -p "Your choice: " user_choice

  # Make sure the user's choice is valid
  if [[ $user_choice != $rock && $user_choice != $paper && $user_choice != $scissors ]]; then
    echo "Invalid choice. Please choose 'r' for rock, 'p' for paper, or 's' for scissors."
    continue
  fi

  # Get computer's choice
  computer_choice=$(echo -n "$rock $paper $scissors" | tr ' ' '\n' | shuf -n1)
  echo "Computer's choice: $computer_choice"

  # Determine the winner
  if [[ $user_choice == $computer_choice ]]; then
    echo "It's a tie!"
  elif [[ ($user_choice == $rock && $computer_choice == $scissors) || ($user_choice == $paper && $computer_choice == $rock) |
  | ($user_choice == $scissors && $computer_choice == $paper) ]]; then
    echo "You win!"[[ ]]
  else
    echo "Computer wins!"
  fi

  # Ask if the user wants to play again
  read -p "Play again? (y/n): " play_again
  if [[ $play_again != "y" ]]; then
    break
  fi
done

echo "Thanks for playing!"