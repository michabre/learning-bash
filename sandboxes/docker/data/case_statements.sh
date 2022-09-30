#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
  echo "What is your favourite Stephen King story?"

  echo "1 - The Shining"
  echo "2 - IT"
  echo "3 - Misery"
  echo "4 - Carrie"
  echo "5 - The Stand"
  echo "6 - Something else..."
  echo "7 - Exit the script."

  read selection;

  case $selection in
      1) echo "I like you Lloyd. Always did. Best damn bartender...";;
      2) echo "Scared of clowns.";;
      3) echo "Write the book!!!";;
      4) echo "High school wasn't all bad";;
      5) echo "Pick a side";;
      6) echo "...maybe you're more of a Clive Barker person.";;
      7) finished=1;;
      *) echo "you didn't enter an appropriate choice."
  esac
done

echo "Thank you for using this script."