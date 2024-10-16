# <p align="center">Balance is Good</p>
  


### ⭐ Objectifs

Create a mini-game in Bash inspired by the TV game show Le Compte est Bon, where you have to reach a target number using basic mathematical operations (+, -, *, /) and a given set of numbers.


### 📔 Instructions

1. The program generates a random target number between 1 and 100 that it does not disclose to the user.
2. Then, it generates 5 random numbers between 1 and 20 that are made available to the user.
3. You must reach the target number by combining the 5 numbers with basic mathematical operations.

- Example:
- Target number: 75
- Numbers provided: [3, 10, 5, 15, 7]
- You can try operations like: (10 * 7) + 5 to reach 75.

Your program will need to:

1. Generate a random target number.
2. Generate 5 random numbers.
3. Allow the user to enter operations (e.g., 10 * 7).
4. Calculate and display the result for each attempt.
5. Indicate whether the target number is reached or not

## User interface

The game is played in the terminal. On each move, you must enter an operation using two of the numbers provided, and then continue with the result of that operation until you reach the target number or fail.

```
$ main.sh
move 1: your numbers: [3, 10, 5, 15, 7]
enter your operation: 3 * 10
move 2: your numbers: [3, 10, 5, 15, 7], result: 30
enter your operation: 30 + 7
move 3: your numbers: [3, 10, 5, 15, 7], result: 37
enter your operation: 7 * 10
move 4: your numbers: [3, 10, 5, 15, 7], result: 70
enter your operation: 70 + 5
The account is good! you found *75* in *4* moves.
```

### ⚠️ Errors handling

The program must handle:

divisions by zero
invalid operations
check that only available numbers, or results of previous operations are used.

You don't have to follow this exact format for your command line game, it's just an example

### 🎁 Bonus

Here are some bonus ideas, you are free to implement the ones you want or make others yourself

Limit the number of attempts: You can only try 5 operations to find the solution.

Change the number range: Allow the user to choose the range for the target number and the numbers (for example, between 1 and 1000).

Cumulative score and "replay" functionality: Implement a scoring system and the possibility of replaying, by accumulating wins and losses.

Add wildcards: Offer wildcards, such as:

Replace: Replace a number among the 5 with another random number.
Double: Double a value for a single operation.
Reduce: Reduce the target number by 10 units.
