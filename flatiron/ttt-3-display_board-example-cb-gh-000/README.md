# Printing a Tic Tac Toe Board

## Overview

## Objectives

1. Define a method `display_board`
2. Print multiple formatted strings.

## Instructions

1. Define a method `display_board` in `lib/display_board.rb`
2. `display_board` should print out the specified Tic Tac Toe board.
3. Run `learn` locally until you pass.
4. Submit the lab.

A Tic Tac Toe program is going to need to be able to display the current state of the board before every turn so that the player can see the board before deciding what move to make. You could imagine a program working as follows, from a player's perspective.

```
Welcome to Tic Tac Toe
   |   |   
-----------
   |   |   
-----------
   |   |   
What move would X like to make (1-9)?
> 5
   |   |   
-----------
   | X |   
-----------
   |   |   
What move would O like to make (1-9)?
> 1
 0 |   |   
-----------
   | X |   
-----------
   |   |   
# etc...
```

Because our program is going to have to do this repeatedly, we should encapsulate the procedure of printing a board within a method so that we can simply call it whenever we need to print the board.

We're going to start with a simplified version of the `display_board` method. Instead of actually displaying the state of a Tic Tac Toe board, we're going to only print out an empty, hard-coded, board. Sure, this method wouldn't work in a real game, but if we can't print a predefined, hard-coded, simplest board, we're probably not going to be able to print a real board.

> Building a simplified first version of a method is a common practice in programming (these methods are sometimes referred to as 'stubs'). By not trying to solve the entire problem at once, we can first focus on correctly structuring our code, laying out some basics for us to build upon. It allows us to get something working as quickly as possible and then improve the code. This process is called iterating on your code and it's just like editing an essay. It's the natural process of small incremental improvements.

Our `display_board` method should print out a board that looks exactly like:

```
   |   |   
-----------
   |   |   
-----------
   |   |   
```

**Board Rules**

1. Each cell is presented by a string with 3 spaces: <pre>"   "</pre>
2. Each row has 3 cells, the middle separated by 2 `|` (pipe) characters: <pre>   |   |   </pre>
3. There are 3 rows, with 2 separating lines of 11 `-` (dash) characters: `-----------` 

You can build a single big string and output it once or you can output each line individually. The end result when you execute your method should be the ascii characters above.



## Tip: Using IRB to experiment

As you define display_board in `lib/display_board.rb`, you're going to want to test your method and see what it does. Just running the test suite with `learn` will give you feedback on its behavior, but there's a quicker way to see how your method behaves and if it matches the desired outcome.

Open IRB from your terminal by typing `irb`.

> You'll know you're in your IRB session because your prompt will change and you'll be able to execute arbitrary ruby (type `1+1` into your IRB session. If you see `2`, you're good, if you see any kind of error, especially mentioning `bash`, you're still in your BASH terminal session, type in `irb`).

Copy the contents of `lib/display_board.rb` to your IRB session.

```
// ♥ irb
001:0 > def display_board
002:1 >     puts "A Tic Tac Toe Board"
003:1 >   end
```

*Don't forget to hit enter after you paste. You should see `=> :display_board`*

Now you can invoke your method by calling it:

```
// ♥ irb
001:0 > def display_board
002:1 >     puts "A Tic Tac Toe Board"
003:1 >   end
=> :display_board
004:0 > display_board
A Tic Tac Toe Board
=> nil
```

And you can quickly see what it does!

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/ttt-3-display_board-example' title='Printing a Tic Tac Toe Board'>Printing a Tic Tac Toe Board</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/ttt-3-display_board-example'>Display Tic Tac Board Example</a> on Learn.co and start learning to code for free.</p>
