# Tic Tac Toe Current Player

## Objectives

1. Use iteration to loop over an array.
2. Control the return value of a method that uses iteration in the method body.
3. Describe and utilize the `%`, or modulo, operator.
4. Call a method from inside of another method.

## Overview

So far, we have built a tic tac toe game that only places `"X"`'s on the board. I don't know about you, but I am not interested in playing that game. We need our game to know whose turn it is and place an `"X"` or an `"O"` on the board accordingly.

Let's break this down into the smallest possible units of work. We'll write two separate methods, a method that will tell us how many turns have been played and a method that will return, based on that information, an `"X"` if it is player `"X"`'s turn, and an `"O"` if it is player `"O"`'s turn.

Why build two separate methods? Let's talk about the Single Responsibility Principle. That principle states that methods should have *one job* and their behavior should be narrowly aligned with that job. The job of determining how many turns have been played is separate from the job of reporting whose turn it currently is, `"X"` or `"O"`, although the second job will rely on the first.

But why follow this principle? Let's think about it. Can we envision a scenario in which we might want to know how many turns have been played, without caring whether it is `"X"`'s turn next or `"O"`'s? What about when we need to determine if there is a tie? What if we want to build a game that keeps track of the user's victories and let's them know how fast their average win is? Breaking down the behavior of our program into it's smallest possible constituents gives us the flexibility we need to take those building blocks and arrange them into new configurations as new goals and problems arrive.

## Instructions

You'll be building two methods `#turn_count` and `#current_player`.

#### `#turn_count`

This method takes in an argument of the board array and returns the number of turns that have been played. A few things to think about:

* How will we determine whose turn it is? Let's make this easy for ourselves, and say that the player that goes first will be assigned the `"X"` token. So, if there is only one occupied space on the board, that means that player `"X"` made their move and it is now player `"O"`'s turn. If there are two occupied spaces on the board, that means that player `"O"` has just made their move and it is now player `"X"`'s turn, and so on.
* Try to implement an iterator, like `#each`, to loop over the elements of the board array. Remember that the return value of `#each` is the original array on which you are calling that method. Keep in mind the desired return value of the `#turn_count` method is the number of turns that have been played.
* We will need to keep track of the number of turns by setting some sort of counter and starting it at `0`. We will need to iterate over each member of the board array, check to see if that element is an `"X"` or an `"O"`. If it is, we increment our `counter` variable by 1.

#### A Refresher Note on Incrementation: The `+=` Operator

Let's say we have a variable called `counter` that we want to increment (increase by one) every time a certain condition is met.

We could do it like this:

```ruby
counter = 0
if my_condition_is_met
  counter = counter + 1
end
```
This re-sets the `counter` variable equal to the value of the *original* or previous `counter` variable value + 1.

To clean this up, or refactor it, a bit, we can use the `+=` or "plus-equals" operator:

```ruby
counter = 0
if my_condition_is_met
  counter += 1
end
```

The line, `counter += 1` is exactly the same as saying `counter = counter + 1`. The plus-equals operator sets a variable equal to it's previous value plus whatever number is on the right hand side of the operator.

### `#current_player`

The `#current_player` method should take in an argument of the game board and use the `#turn_count` method to determine if it is `"X"`'s turn or `"O"`'s.

If the turn count is an even number, the `#current_player` method should return `"X"`, otherwise, it should return `"O"`.

#### Determining If a Number is Even or Odd

What makes a number even? If it is evenly divisible by 2––if dividing that number by 2 leaves a remainder of 0. There is a Ruby method for determining the remainder of one number, divided by another, the `%`, or modulo, operator.

Here's how it works:

```ruby
4 % 2 #=> 0

15 % 2 #=> 1
```

Try using the `%` operator in your `#current_player` method. Then, try refactoring your method to use the `.even?` or `.odd?` methods. Look them up in the Ruby Docs to learn more.

#### Bonus

If you can get your `#current_player` method working using `if`/`else` statements, try refactoring it using the ternary operator. You can read the [Ruby documentation](http://ruby-doc.org/core-2.3.0//doc/syntax/control_expressions_rdoc.html#label-Ternary+if) on ternary operators to learn more, and of course, Google around as well. 

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/ttt-10-current-player' title='Tic Tac Toe Current Player'>Tic Tac Toe Current Player</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/ttt-10-current-player'>Tic Tac Toe Current Player</a> on Learn.co and start learning to code for free.</p>
