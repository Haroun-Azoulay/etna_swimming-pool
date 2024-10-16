#!/bin/bash -x

echo "----------------------------------- Welcome to the just price -----------------------------------"

# max random for indication 32767
guessNumber=$((1 + $RANDOM % 100))
turn=1

# Debugging
echo $guessNumber

while
    true
    echo "Please insert number to guess price"
    read choiceNumber
    echo "Your choice is $choiceNumber"

    # "^" start to check the start string it's beginning anchor  "+" it's one or many "$" it's end anchor
    if ! [[ "$choiceNumber" =~ ^[0-9]+$ ]]; then
        echo "Error : You must enter number"
        continue
    fi
do
    # [] it s for compare number
    if [[ $choiceNumber -eq $guessNumber ]]; then
        echo "Congratulations, You win! you win on turn: $turn !"
        break
    elif [[ $choiceNumber -lt $guessNumber ]]; then
        echo "Too low! Try again. You are turn: $turn"
    else
        echo "Too high! Try again. You are turn: $turn"
    fi
    # () because it's incrementation
    ((turn++))
done
