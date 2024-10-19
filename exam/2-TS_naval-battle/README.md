# <p align="center">Naval Battle 🚢</p>
  


### ⭐ Objectifs

### Esay mode 👶

The goal of the game: You are 2 players, you play in turns and you each place your boats on your matrix.
Your matrix is ​​8 lengths and 8 widths.
After you play then the turn passes to the other player you can attack only once per turn if a boat is touched an X is displayed.

The first player to destroy all the other player's ship wins the game.


Your generate boat with this commande: 

in this mode all ships are of size 1 by 1

Your generate boat with this command: 

```
$ tsc main.ts
$ node main.js --number <n>
```

number is the number of boat for each player


### Normal mode 🧑

You must parse json to retrieve data about each ship.
Ships comes with various attribute, the principal attribute to look for is it's length, ships now take more than one square of the matrix, and require more shots to sink.

The rest of the data is irrelevant for this step

```
$ tsc main.ts
$ node main.js --data <json_file>
```

Warning ⚠️ : Your ships fit on multiple squares of the matrix, make sure that the ships can´t 

### Hard mode 🪖

You make lot of bonus for example :

- use the other attributes to implement different power for your ships :
    -  one shot sink regardless of the targeted ship lengths
     - ships that can move in between turns
 -  ships of larger length and width (Big Man-o-War incoming !)
  - make an AI for player 2 (or even player 1 and see them tearing each other apart Yaaar !)
   - use colors
  -  refresh screen in between turns


### ℹ️ Resources
        
For normal mode and onwards, you can use the ```resources.json``` provided, or make your own format.

### 📔 Instructions

- Generate a matrix.
- Use a loop for the game.
- Prepare the game by placing ships on the matrix
- Start the game
     - Player 1 attacks, matrix is shown to reveal the update naval battlefield and a log is outputed to keep track of the actions taken
    - Player 2 attacks, matrix is shown to reveal the update naval battlefield and a log is outputed to keep track of the actions taken.
     - etc until one of the players win the game

The method the ships and action are taken by the players are up to you.

### 💡 Exemple

This an example, feel free to change the layout and prompt to your liking

```
$ tsc main.ts
$ node main.js --data resources.json --max-ship 2
Player 1 prepare for battle !
Player 1 - Select your ship (1) ("Destroyer", "Submarine", "Battleship", "Cruser") : Destroyer
Player 1 - Select ships positions and orientation : B5N
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. d . . . . . .]
5 [. d . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. . . . . . . .]

Player 1 - Select your ship (2) ("Destroyer", "Submarine", "Battleship", "Cruser") : Cruser
Player 1 - Select ships positions and orientation (2) : G7W
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. d . . . . . .]
5 [. d . . . . . .]
6 [. . . . . . . .]
7 [. . c c c c c .]
8 [. . . . . . . .]

All ship placed !
Player 2 prepare for battle !
Player 2 - Select your ship (1) ("Destroyer", "Submarine", "Battleship", "Cruser") : Destroyer
Player 2 - Select ships positions and orientation : A2S
   A B C D E F G H
1 [. . . . . . . .]
2 [d . . . . . . .]
3 [d . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. . . . . . . .]

Player 2 - Select your ship (2) ("Destroyer", "Submarine", "Battleship", "Cruser") : Destroyer
Player 2 - Select ships positions and orientation (2) : C8E
   A B C D E F G H
1 [. . . . . . . .]
2 [d . . . . . . .]
3 [d . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. d d . . . . .]

All ship placed !

Player 1 it's your turn !
Opponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. . . . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. d . . . . . .]
5 [. d . . . . . .]
6 [. . . . . . . .]
7 [. . c c c c c .]
8 [. . . . . . . .]
Take your shot : B8
Hit !

Player 2 it's your turn !
Oponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. . . . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [d . . . . . . .]
3 [d . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. X d . . . . .]
A B C D E F G H
Take your shot : H2
Miss !


Player 1 it's your turn !
Oponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. X . . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. d . . . . . .]
5 [. d . . . . . .]
6 [. . . . . . . .]
7 [. . c c c c c .]
8 [. . . . . . . .]
Take your shot : A8
Miss !

Player 2 it's your turn !
Oponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . O]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. . . . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [d . . . . . . .]
3 [d . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. X d . . . . .]
Take your shot : G2
Miss !

Player 1 it's your turn !
Opponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [O X . . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. d . . . . . .]
5 [. d . . . . . .]
6 [. . . . . . . .]
7 [. . c c c c c .]
8 [. . . . . . . .]
Take your shot : C8
Sunk !

Player 2 it's your turn !
Oponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . O O]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. . . . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [d . . . . . . .]
3 [d . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. @ @ . . . . .]
A B C D E F G H
Take your shot : F2
Miss !

Player 1 it's your turn !
Oponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [O @ @ . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. d . . . . . .]
5 [. d . . . . . .]
6 [. . . . . . . .]
7 [. . c c c c c .]
8 [. . . . . . . .]
Take your shot : A2
Hit !

Player 2 it's your turn !
Opponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . O O O]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. . . . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [X . . . . . . .]
3 [d . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [O @ @ . . . . .]
A B C D E F G H
Take your shot : E7
Hit !

Player 1 it's your turn !
Oponent's board
   A B C D E F G H
1 [. . . . . . . .]
2 [X . . . . . . .]
3 [. . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [O @ @ . . . . .]

Your board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. d . . . . . .]
5 [. d . . . . . .]
6 [. . . . . . . .]
7 [. . c c X c c .]
8 [. . . . . . . .]
Take your shot : A3
Sunk !

Player 1 wins the game !

Player 1 board
   A B C D E F G H
1 [. . . . . . . .]
2 [. . . . . . . .]
3 [. . . . . . . .]
4 [. d . . . . . .]
5 [. d . . . . . .]
6 [. . . . . . . .]
7 [. . c c X c c .]
8 [. . . . . . . .]

Player 2 board
   A B C D E F G H
1 [. . . . . . . .]
2 [@ . . . . . . .]
3 [@ . . . . . . .]
4 [. . . . . . . .]
5 [. . . . . . . .]
6 [. . . . . . . .]
7 [. . . . . . . .]
8 [. @ @ . . . . .]
```

## ❤️ Support  
A simple star to this project repo is enough to keep me motivated on this project for days. If you find your self very much excited with this project let me know with a tweet.

If you have any questions, feel free to reach out to me on.
        
## 🙇 Author
#### Haroun Azoulay

- Github: [@Haroun-Azoulay](https://github.com/Haroun-Azoulay)