# Building a Tic Tac Toe Turn

## Objectives

1. Build a method composed of the use of many methods ("helper methods") previously defined.
2. Use method return values to control the logic of a composed method.
3. Use an input validation loop or recursion to create a loop.
4. Build a CLI that uses a single method call to execute.

## Overview

You're going to be building a CLI for a single turn of Tic Tac Toe.

A turn of Tic Tac Toe is composed of the following routine:

1. Asking the user for their move by position 1-9.
2. Receiving the user input.
3. Convert position to an index.
4. If the move is valid, make the move and display the board to the user.
5. If the move is invalid, ask for a new move until a valid move is received.

All these procedures will be wrapped into our `#turn` method. However, the majority of the logic for these procedures will be defined and encapsulated in individual methods (some of which you may have built previously).

You can imagine the pseudocode for the `#turn` method:

```
ask for input
get input
convert input to index
if index is valid
  make the move for index
  show the board
else
  ask for input again until you get a valid input
end
```

## Instructions

### Helper Methods in `lib/turn.rb`

Before defining `#turn`, you should define the following methods:

#### `#display_board`

Should accept a board as an argument and print out the current state of the board for the user.

#### `#valid_move?`

Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.

**Hint: While not explicitly required by this lab, you might want to encapsulate the logic to check if a position is occupied in its own method, perhaps `#position_taken?`**

#### `#move`

This method should accept a board, an index from the user (which was converted from their raw input with `input_to_index`), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.

### Workflow

Start with building those methods (or copying code you might have written before) and making the first few tests in `spec/turn_spec.rb` pass. You can use the `learn --fail-fast` or `rspec --fail-fast` mode to only see 1 failure at a time and allow you to work through those method definitions.

You'll then need to build your `#turn` method. Before building a full `#turn` method according to the failing tests, let's setup a quick CLI so that you can watch your `#turn` method perform as you build, visually confirming it behaves as expected.

Open `bin/turn`, you'll see that it is already setup with `#!/usr/bin/env ruby` so you can execute it by running `./bin/turn` or `ruby bin/turn` from your terminal. It currently does nothing (because it has no code), but try it out just for fun.

The purpose of this file is to execute a turn of Tic Tac Toe. The first thing it needs to do is load our library of methods defined in `lib/turn.rb`.

Edit `bin/turn`:

```ruby
#!/usr/bin/env ruby
require_relative '../lib/turn'
```

By adding `require_relative '../lib/turn'` we are telling Ruby to load a file from a relative path to the current file. Since we're in `bin` we have to go up a directory and into `lib` to find `turn.rb`, thus the path `../lib/turn`. **You never need to give the .rb extension to a path for require_relative. Ruby assumes you mean a .rb file.**

Next, the CLI needs to setup the data required to play a game of Tic Tac Toe, namely, the `board` variable to store the array we use to keep track of the state of the board.

Edit `bin/turn`:

```ruby
#!/usr/bin/env ruby

require_relative '../lib/turn'

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

```

We're now ready to start the game. Let's welcome the user and show them the board at the start of the game.

Edit `bin/turn`:

```ruby
#!/usr/bin/env ruby

require_relative '../lib/turn'

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts "Welcome to Tic Tac Toe!"
display_board(board)
```

Notice how we evoke the `#display_board` method defined in `lib/turn.rb`, passing the local board data into it via an argument on the last line.

Now let's run this CLI: `bin/turn` or `ruby bin/turn` from your terminal. You should see:

```
$ ./bin/turn
Welcome to Tic Tac Toe!
   |   |   
-----------
   |   |   
-----------
   |   |   
```

Great! Now the next thing the CLI needs to do is kick off a turn of the game. We know we're going to build a `#turn` method to encapsulate that procedure, so even though we haven't defined it yet, let's add the call to the soon-to-be-coded `#turn` method to our CLI right now.

Edit `bin/turn`:

```ruby
#!/usr/bin/env ruby

require_relative '../lib/turn'

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts "Welcome to Tic Tac Toe!"
display_board(board)
turn(board)
```

If we ran the CLI right now, without defining `#turn` in `lib/turn.rb`, we'd get a `NameError` complaining about an undefined local variable or method `turn`.

Let's quickly jump to `lib/turn.rb` and just stub out the most simple version of the `#turn` method.

Add to `lib/turn.rb`

```ruby
def turn(board)
  puts "Please enter 1-9:"
end
```

Let's run the CLI now: `bin/turn` or `ruby bin/turn` from your terminal. You should see:

```
$ ./bin/turn
Welcome to Tic Tac Toe!
   |   |   
-----------
   |   |   
-----------
   |   |   
Please enter 1-9:
```

Great! Now as we add logic to `#turn`, we can use our CLI to see how it behaves.

### `#turn`

The hard part of the `#turn` method is figuring out how to handle invalid input. We know that when a user enters invalid input, we want to ask them for input again. Imagine the pseudocode again:

```
get input
convert input to index
if index is valid
  make the move for input
else
  ask for input again until you get a valid input
end
```

Asking for input again is the hard part. We either need a mechanism to repeat the entire logic again until input satisfies the valid requirement, like a loop of some sort, or we need to be able to execute a procedure that asks for a user's input again. It's almost like what we might want to do in the event of invalid user input is just replay the entire turn. No move was made, so why not just run `#turn` again?

Calling a method from within itself is totally okay in programming. In fact, it is an elegant solution to some complex problems. **Recursion** is the repeated application of the same procedure. [Google it!](https://www.google.com/search?q=recursion&oq=recursion&aqs=chrome..69i57j69i60l3j69i65l2.1630j0j1&sourceid=chrome&es_sm=119&ie=UTF-8) There's an easter egg from Google developers on that page; can you find it?

As you are already familiar with loops, that is a totally acceptable solution to the input validation problem as well.

As you try to get it working, keep playing with `bin/turn` until it works as expected, endlessly asking you for a valid turn input. If you ever need to exit the CLI without giving an input, just hit `CTRL+C` (sometimes `ALT+C` or `COMMAND+C`).

The tests will pass once you have your CLI working right, but don't be scared of running the tests to see the failures for `#turn` and seeing if they point you in the right direction.

### Conclusion

Once you define `#turn` as specified by the tests in `spec/turn_spec.rb`, your CLI should work for a turn of Tic Tac Toe and running it should yield:

```
$ ./bin/turn
Welcome to Tic Tac Toe!
   |   |   
-----------
   |   |   
-----------
   |   |   
Please enter 1-9:
1 # I entered 1 in response to the gets prompt.
 X |   |   
-----------
   |   |   
-----------
   |   |   
```

A subsequent run might yield:

```
$ ./bin/turn
Welcome to Tic Tac Toe!
   |   |   
-----------
   |   |   
-----------
   |   |   
Please enter 1-9:
5
   |   |   
-----------
   | X |   
-----------
   |   |   
```

Currently our program only allows us to run 1 turn, the first turn. If you wanted to see how `#turn` would behave say on the third turn of the game, make the following edits to `bin/turn`:

```ruby
#!/usr/bin/env ruby

require_relative '../lib/turn'

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts "Welcome to Tic Tac Toe!"

move(board, 4, "X")
move(board, 0, "O")

display_board(board)

turn(board)
```

Notice that before the game even really starts, we hard code an execution of two moves, X to the middle position (4), and O to the top left (0).

When we run the CLI, we'd see:

```
$ ./bin/turn
Welcome to Tic Tac Toe!
O |   |   
-----------
  | X |   
-----------
  |   |   
Please enter 1-9:
```

The board is pre-filled and the turn will now add a 3rd token to the board.

Try this edit to `bin/turn`:

```ruby
#!/usr/bin/env ruby

require_relative '../lib/turn'

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts "Welcome to Tic Tac Toe!"

move(board, 4, "X")
move(board, 0, "O")
move(board, 1, "X")

display_board(board)

turn(board)
```

Here we are manually making 3 moves, an X, an O, and then an X, as would proceed normally in a real game. That means that the next turn belongs to the O player, right? Run your CLI and enter a move for O and see what happens. Can you guess?

```
$ ./bin/turn
Welcome to Tic Tac Toe!
 O | X |   
-----------
   | X |   
-----------
   |   |   
Please enter 1-9:
8
 O | X |   
-----------
   | X |   
-----------
   | X |   
```

It was O's move and when I entered 8 to block X with my O, our program put an X in!!! Why? We'll have to fix that. Can you anticipate what we might need to build to make that work?

The other issue with our current program is that only one turn is being played. We could actually work around that right now. How many turns does our CLI execute? Currently only 1 (even with the explicit calls to move, those aren't user turns, they are only updating the board). Is there anything preventing us from just calling `#turn` 9 times so it's like a real game with 9 turns? Nope! Let's try it with a final edit to `bin/turn`:

```ruby
#!/usr/bin/env ruby

require_relative '../lib/turn'

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts "Welcome to Tic Tac Toe!"

display_board(board)

turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
```

Here's an entire execution of this CLI (remember, when you see a number that means the player put in that input).

```
./bin/turn
Welcome to Tic Tac Toe!
   |   |   
-----------
   |   |   
-----------
   |   |   
Please enter 1-9:
1
 X |   |   
-----------
   |   |   
-----------
   |   |   
Please enter 1-9:
2
 X | X |   
-----------
   |   |   
-----------
   |   |   
Please enter 1-9:
3
 X | X | X
-----------
   |   |   
-----------
   |   |   
Please enter 1-9:
4
 X | X | X
-----------
 X |   |   
-----------
   |   |   
Please enter 1-9:
5
 X | X | X
-----------
 X | X |   
-----------
   |   |   
Please enter 1-9:
6
 X | X | X
-----------
 X | X | X
-----------
   |   |   
Please enter 1-9:
7
 X | X | X
-----------
 X | X | X
-----------
 X |   |   
Please enter 1-9:
8
 X | X | X
-----------
 X | X | X
-----------
 X | X |   
Please enter 1-9:
9
 X | X | X
-----------
 X | X | X
-----------
 X | X | X

```

Another issue, besides only marking Xs as described above, is that the game played way too many turns! We need it to know how to quit if someone wins.

Even with these deficiencies, this `#turn` method means you are very close to building a complete Tic Tac Toe game. Get excited!

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/ttt-8-turn' title='Building a Tic Tac Toe Turn'>Building a Tic Tac Toe Turn</a> on Learn.co and start learning to code for free.</p>

