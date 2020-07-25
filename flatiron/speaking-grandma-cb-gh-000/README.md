# Speak to Grandma

## Objectives

1. Control flow by using `if`, `elsif`, and `else` statements.
2. Manipulate strings correctly.
3. Evaluate the type case of a string.

## Instructions

1. Fork and clone this lab.
2. Run the test suite using either the `rspec` or `learn` command. You'll be coding your solution in `grandma.rb`.
3. Write a `speak_to_grandma` method. 
	* The method should take in a string argument containing a phrase and check to see if the phrase is written in all uppercase: if it isn't, then grandma can't hear you. She should then respond with (return) `HUH?! SPEAK UP, SONNY!`.
	* If you shout at her (i.e. call the method with a string argument containing a phrase that *is* all uppercase, then she *can* hear you (or at least she thinks that she can) and should respond with (return) `NO, NOT SINCE 1938!`.
  * However, if the phrase is *exactly* equal to: `"I LOVE YOU GRANDMA!"`, then Grandma is very pleased and definitely hears that! and should repond with (return) `I LOVE YOU TOO PUMPKIN!`

**A few things to think about:**

* You'll need to use `if`, `elsif`, and `else` statements to implement the logic of grandma responding with the appropriate string based on whether or not you speak to her in all uppercase, and/or whether you express your love. 
* Think about how we can check to see if a string is all uppercase. Reference the information below on manipulating strings. 
* Think about the response as a return value.


## Manipulating Strings

One of the things you'll need to determine is if the argument that the `speak_to_grandma` method takes in is formatted a certain way (all uppercase).

There are many methods on the [String class](http://www.ruby-doc.org/core-2.1.4/String.html) that manipulate strings. Let's take a look at a few:

```ruby
"Hello World".upcase
#=> "HELLO WORLD"
"Hello World".reverse
#=> "dlroW olleH" 
"Hello World".downcase
#=> "hello world" 
"Hello World".capitalize
#=> "Hello world" 
"Hello World".swapcase
#=> "hELLO wORLD" 
```

Which one can we use to check that the argument string (i.e. what you're saying to Grandma) is all uppercase? You can use the comparison operator (`==`) to determine if the string you pass into your method call as an argument *matches* ("is equal to") that same string, but in uppercase form.

On that same note, we can also use the comparison operator to check and see if the string matches `"I LOVE YOU GRANDMA!"`


<p data-visibility='hidden'>View <a href='https://learn.co/lessons/speaking-grandma' title='Speak to Grandma'>Speak to Grandma</a> on Learn.co and start learning to code for free.</p>
