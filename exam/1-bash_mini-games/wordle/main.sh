#!/bin/bash -x

source ./lib.sh

echo "----------------------------------- Welcome to the Wordle -----------------------------------"

# ainsi color use on terminal unix i must reset on black after
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
RESET="\e[0m"

turn=1

randomWord=$(getRandomWord)

# Debugging
echo "Guess word : $randomWord"

# "0" means only corespondance with 0 and "." means eather charactere
cutRandomWord=($(echo "$randomWord" | grep -o .))

while [ $turn -le 6 ]; do
    echo "Tour: $turn"
    choiceWord=$(getInput)

    cutChoiceWord=($(echo "$choiceWord" | grep -o .))

    if ! [[ "$choiceWord" =~ ^[A-Z][a-z]{4}$ ]]; then
        echo "The word must be 5 characters long, the first character must be uppercase, and the others lowercase only. Expected format for example 'Money'"
        continue
    fi

    result=""

    for ((i = 0; i < ${#cutRandomWord[@]}; i++)); do
        if [[ ${cutRandomWord[$i]} == ${cutChoiceWord[$i]} ]]; then
            result+="${GREEN}${cutChoiceWord[$i]}${RESET} "
        elif [[ " ${cutRandomWord[@]} " =~ " ${cutChoiceWord[$i]} " ]]; then
            result+="${YELLOW}${cutChoiceWord[$i]}${RESET} "
        else
            result+="_ "
        fi
    done

    echo -e "Result: $result"
    # remove space with 'tr -d'
    if [[ "$result" == "$(echo "${cutRandomWord[@]}" | tr -d ' ')" ]]; then
        echo "Congratulations, You win! you win on turn: $turn !"
        break
    fi

    ((turn++))
done

if [ $turn -gt 6 ]; then
    echo "Sorry, you use all tries the guess word is : $randomWord."
fi
