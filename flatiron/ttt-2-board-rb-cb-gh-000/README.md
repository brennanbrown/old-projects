# Tic Tac Toe Board

## Overview

### The Tic Tac Toe Board

When building a Tic Tac Toe program, you're going to have to figure out a way to store or represent the game board. Looking at a Tic Tac Toe board, we can identify a few properties.

```
   |   |
-----------      
   |   |
-----------   
   |   |
```

A Tic Tac Toe board is basically a 3x3 grid with 9 total positions. You could think of the positions as being numbered, from top left to bottom right, as:

```
 1 | 2 | 3
-----------      
 4 | 5 | 6
-----------   
 7 | 8 | 9
```

Each cell in the Tic Tac Toe board can thus be referred to by a simple single number identifier. The middle square would be referred to as `5`.

This is super useful because it will eventually allow players to easily tell the program where they want to move. The player X could tell the program they want to move to the top left corner by saying "1". The board would represent that graphically (through ASCII) via:

```
 X |   |
-----------      
   |   |
-----------   
   |   |
```

ASCII just means using standard keyboard characters, also known as the ASCII character set, to draw graphics.

An ASCII Cat:

```
/\     /\
{  `---'  }
{  O   O  }
~~>  V  <~~
 \  \|/  /
  `-----'__
  /     \  `^\_
 {       }\ |\_\_   W
 |  \_/  |/ /  \_\_( )
  \__/  /(_O     \__/
    (  /
     ME
```

### Representing the Board as an Array

Now that we have simplified the concept of a Tic Tac Toe board to a collection of 9 positions or cells, easily identified by number, how can we represent this in code? What tool do we have at our disposal that can represent a collection of things? Is there some magical way to store data in ruby as an ordered, indexed, list? If you're thinking "We can use an Array!", you're absolutely right.

We need an array that has 9 elements. Each element in the array represents a position in the board. The first element in the array, index 0, is actually position 1 on the board, the top left corner. We'll represent the value of a position with a string that has a single space, `" "`.

As a simplified example, imagine only a single row of tic tac toe. You would represent that with the following array:

```ruby
row = [" ", " ", " "]

# Position 1: Left
row[0]

# Position 2: Middle
row[1]

# Position 3: Right
row[2]

# Move X to the Position 2, Middle
row[1] = "X"
row #=> [" ", "X", " "]
```

*Note: You should create a simple array with one element for each position on the board. There are some more complex ways you could solve this with an array for each row of the board saved within the array for the board (a nested or multi-dimensional array). Don't do that - it'll just make your code harder to work with for now.

*Remember: Represent a position in the board array as a string with a space in it: `" "`*

## Objectives

1. Define a local variable `board`.
2. Assign `board` to an array with 9 string elements.

## Instructions

1. Define a local variable in `lib/board.rb` called `board`
2. Set the `board` local variable equal to an array.
3. Fill the `board` array with 9 strings containing a single space: `" "`.
4. Run `learn` and read output and fix any errors.
5. Submit your solution with `learn submit`.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/ttt-2-board-rb' title='Tic Tac Toe Board'>Tic Tac Toe Board</a> on Learn.co and start learning to code for free.</p>
