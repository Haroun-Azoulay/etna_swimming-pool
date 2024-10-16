#!/bin/bash

echo "----------------------------------- Welcome to the balance is good -----------------------------------"

calculNumber=($(shuf -i 1-100 -n 5))
guessNumber=$((1 + $RANDOM % 100))
turn=0

function isInLit() {
    number=$1
    for element in "${calculNumber[@]}"; do
        if [ "$element" -eq "$number" ]; then
            return 0
        fi
    done
    return 1
}

while true; do
    echo "The numbers to use are: ${calculNumber[@]}"
    echo "The magic number is: $guessNumber"
    echo "Please insert a mathematical expression (for example 1+1):"

    read choiceNumber

    if [[ "$choiceNumber" =~ [0-9]+\/0 ]]; then
        echo "Error: Division by zero is not allowed"
        continue
    fi

    checkChoiceNumber=($(echo "$choiceNumber" | grep -oE '[0-9]+'))

    allNumbersInList=true

    for number in "${checkChoiceNumber[@]}"; do
        if ! isInLit "$number"; then
            allNumbersInList=false
            break
        fi
    done

    ((turn++))

    if $allNumbersInList; then
        result=$(echo "$choiceNumber" | bc)
        echo "Result: $result"
        if (($(echo "$result == $guessNumber" | bc))); then
            echo "You win! You won on turn: $turn"
            break
        else
            echo "You lose! This was turn: $turn"
        fi
    else
        echo "One or more numbers from your expression are not in the generated list."
    fi
done
