# Method Scope Lab

## Objectives

1. Define a method that takes in an argument and pass a variable in as that argument. 
2. Understand that a variable defined inside a method cannot be used outside of that method. 

## Instructions

### Part I: Passing a Variable Into a Method

Open up `lib/catch_phrase.rb`. You should see the following method:

```ruby
def catch_phrase
  puts phrase
end
```

Note that the method is trying to `puts` out a variable called `phrase`. 

Let's take a look at the test for this method in `spec/catch_phrase_spec.rb`:

```ruby
describe "#catch_phrase" do 
  it "puts out a catch phrase" do 
    phrase = "It's-a me, Mario!"
    expect{catch_phrase}.to output("It's-a me, Mario!\n").to_stdout
  end
end
```

Go ahead and run the test for this method only by typing `rspec spec/catch_phrase_spec.rb` into your terminal in the directory of this lab. You should see the following error:

```ruby
NameError:
       undefined local variable or method `phrase' for #<RSpec::ExampleGroups::CatchPhrase:0x007f87b9cf04c0>
```

This error is occurring because the code inside the `#catch_phrase` method is trying to use the `phrase` variable **but** we defined this variable on line 5 of our test. In other words, this variable is being defined *outside of the method*. Our method doesn't have access to it! **It is out of scope.** Let's fix it!

We need to pass `phrase` into our `#catch_phrase` as an argument. Let's do it:

1. Re-define the `#catch_phrase` method to take in an argument of a phrase. 
2. Change the test in `spec/catch_phrase_spec.rb` to match the following:

```ruby
require "spec_helper"
describe "#catch_phrase" do 
  it "puts out a catch phrase" do 
    phrase = "It's-a me, Mario!"
    expect{catch_phrase(phrase)}.to output("It's-a me, Mario!\n").to_stdout
  end
end
```

### Part II: Understanding Method Scope

Open up `lib/rescue_princess_peach.rb` and take a look at the following method:

```ruby
def rescue_princess_peach
  status = "rescued"
  puts "Hooray! Mario has rescued Princess Peach."
end
```

Notice that the body of this method is setting a variable, `status` equal to a value of `"rescued"`. Do you think we will be able to access this variable outside of the method? Let's find out!

1 . Comment back in the following lines in your `lib/rescue_princess_peach.rb` file: 

```ruby
rescue_princess_peach
puts status
```

2 . Run the file with `ruby lib/rescue_princess_peach.rb` in your terminal. You should see the following:

```ruby
Hooray! Mario has rescued Princess Peach.
lib/rescue_princess_peach.rb:12:in `<main>': undefined local variable or method `status' for main:Object (NameError)
```

We are getting a NameError because `status` is undefined. Wait a minute, you might be wondering. Didn't we define `status` inside the `#rescue_princess_peach` method? We did, but **variables defined inside a method are not available outside of that method**. 

**Go back and comment out lines 11 and 12 of `rescue_princess_peach.rb`.**

Run the test suite and you'll see that we are passing all of our tests. If you open up the `spec/rescue_princess_peach_spec.rb` file, you'll see the following test:

```ruby
require "spec_helper"

describe "#rescue_princess_peach" do
  it "outputs a message and sets a variable, status, that is not available outside of this method" do
    expect{rescue_princess_peach}.to output("Hooray! Mario has rescued Princess Peach.\n").to_stdout 
    expect{puts status}.to raise_error(NameError)
  end 
end
```

Notice the last expectation of our test: `expect{puts status}.to raise_error(NameError)`. We expect any attempt to use the `status` variable to be met with a `NameError`. Our program, outside of the `#rescue_princess_peach`method, just doesn't know what it is. 
<p data-visibility='hidden'>View <a href='https://learn.co/lessons/method-scope-lab' title='Method Scope Lab'>Method Scope Lab</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/method-scope-lab'>Method Scope Lab</a> on Learn.co and start learning to code for free.</p>
