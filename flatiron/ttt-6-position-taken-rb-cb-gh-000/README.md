# Position Taken in Tic Tac Toe

## Objectives

1. Define a method that updates an array passed into it as an argument.
2. Define a method that uses control flow in the form of `if/else` statements to manipulate an array.

## Overview

We already have methods that display the game board (which is mapped to an array's indices) and a method that asks for a user's input and fills out a position on the game board accordingly. However, before our program can fill out a position on the board, we need to confirm that that position is not already filled with an "X" or an "O"

In this lab we'll be adding a `#position_taken?` method to our Tic Tac Toe game. This method will be responsible for evaluating the user's input against the Tic Tac Toe board and checking to see whether or not that position is occupied.

For example, if the user inputs that they would like to fill out position `"2"`, we would take that string `"2"` and convert it to board index 1. Then we pass the index to our `#position_taken?` and check to see if that position is vacant or if it contains an "X" or an "O". If the position is free, the method should return `false` (i.e. "not taken"); otherwise it will return `true`.

Basically, we have the `#position_taken?` method so you don't end up playing with this guy:

![robot doesnt know positio_take?](https://i.imgur.com/GTk0h37.gif "No body wants to play tic tac toe with this guy")

### Validating User Input

The underlying goal of this method is to check, or validate, user input against the current state of the game board. Validating data or user input is a big part of programming. In this particular example of our tic tac toe game, our entire game would break if a user could overwrite board positions that are already filled out with an "X" or an "O". Validations are therefore a necessary part of making our program function the way it is intended.

The concept of validations is a common one, and you're likely to encounter it in other programming scenarios.

### A Note on Methods Ending in a `?` 

Conventionally, we name methods that return either `true` or `false` by adding a literal question mark to the end of the name. So, if our method is meant to answer the question: "is this position taken?", we will phrase our method definition just like that, `position_taken?`. This reflects one of the most appealing features of Ruby, its readability. Ruby lends itself especially well to elegant and sensical statements, which offers advantages to beginner programmers.

## Instructions

We'll be breaking this lab down into two parts:

1. Define a method that checks if a given space on the board is empty, i.e. equal to `" "`.
2. Address the "edge cases" - scenarios that qualify as an empty space that isn't equal to the literal `" "`. For example, we would want to consider `""` to be an empty space as well.

### Part I: checking for an empty space

To get started, let's run our test suite. Looks like we need to define our method, called `#position_taken?` to accept two arguments, the board (which, if you recall, is an array with 9 indices) and the index that the player wishes to fill with their token, an "X" or and "O". Go ahead and do that, and then run the test suite again.

Let's take a look at our first error message now:

```bash
Failures:

  1) #position_taken? in lib/position_taken.rb returns false if the board has an empty string " " in the position
     Failure/Error: expect(position_taken?(board, index)).to be(false)

       expected false
            got nil
```

The description reads: `returns false if the board has an empty string, " ", in the desired position`.

So, let's build our method to check to see if the array element at the index of the desired position is equal to an empty string.

Remember that we can access an array element at a particular index with the following syntax:

```ruby
array[index_number]
```

Then we want to know if the value at that index of the array is equal to an empty string, `" "`, our method should return `false`, indicating that it is not taken.

**Reminder:** Remember that to check for equality, we use the `==` operator, not the `=` operator. The `=` operator is the assignment operator, it sets a variable equal to a value. The `==` operator is the equality operator. It returns `true` if the value on the left side of the operator is the same as the value on the right side of the operator. Otherwise it returns false. To get this test passing, you could also use the `!=`, or "not equal" operator.

You'll be able to use `if/else` or simple boolean operators like `&&`, `||`, or `!=`, or '=='.

Once you implement this first check, you'll see the next error about an edge case, `""`

Let's check out our next error message:

```bash
1) #position_taken? in lib/position_taken.rb returns false if the board has an empty string "" in the position
     Failure/Error: expect(position_taken?(board, index)).to be(false)

       expected false
            got nil
```

It looks like our method *also* needs to treat `""` as an empty, or not taken, space. Let's move on to part II of this lab.

### Part II: Edge Cases

"Edge case" is a term used to refer to scenarios that might occur in your program that we can anticipate, but that are unlikely to be the norm.

#### Edge Case No. 1

Our tic tac toe game *should* utilize a board in which empty spaces are represented by an empty string that looks like this: `" "`. However, we could imagine some other programmer using our code and creating a tic tac toe game with a board in which empty spaces on the board are represented by an empty string that looks like this: `""`. We don't *intend* for our program to be run that way, but it's not that unlikely that it could happen. Thus, we have our first edge case.

We need to change the content of the `#position_taken?` method to check to see if the given `board[index]` is equal to *either* an empty string that looks like this `" "` *or* an empty string that looks like this `""`.

**Hint:** You can use the `||`, or "or" operator to check for both of the above-described conditions on the same line.

#### Edge Case No. 2

Once you get the test relating to the `""`-type of empty space passing, you're ready to move on to your next edge case. If you run your test suite again you should see the following error:

```bash
Failures:

    1) #position_taken? in lib/position_taken.rb returns false if the board has nil in the position
     Failure/Error: expect(position_taken?(board, index)).to be(false)

       expected false
            got nil
```

It looks like our method should also account for the use of `nil` to represent an empty or unoccupied space on our tic tac toe board. Use the `||` operator to account for this edge case. Our `position_taken?` method should return false if the submitted index is equal to *either* an empty string, `" "`, *or* an empty string `""`, *or* `nil`.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/ttt-6-position-taken-rb' title='Position Taken in Tic Tac Toe'>Position Taken in Tic Tac Toe</a> on Learn.co and start learning to code for free.</p>
