count_files() {
  echo $(ls -1 | wc -l)
}

# Main program
echo "Welcome to the guessing game!"
echo "Can you guess how many files are in the current directory?"

file_count=$(count_files) # Get the number of files
while true; do
  read -p "Enter your guess: " guess
  if [[ $guess -eq $file_count ]]; then
    echo "Congratulations! You guessed it correctly."
    break
  elif [[ $guess -lt $file_count ]]; then
    echo "Your guess is too low. Try again."
  else
    echo "Your guess is too high. Try again."
  fi
done
