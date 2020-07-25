require "spec_helper"

describe "#catch_phrase" do
  it "puts out a catch phrase" do
    phrase = "It's-a me, Mario!"
    # The error occurring is because the code inside
    # the #catch_phrase method trying to use
    # the phrase variable, but this variable was
    # defined on line 13 of our test.

    # In other words, the variable is being defined outside of the method.
    # The spec method doesn't have access to it! It is out of scope.
    expect{catch_phrase(phrase)}.to output("It's-a me, Mario!\n").to_stdout
  # expect{catch_phrase}.to output("It's-a me, Mario!\n").to_stdout
  end
end
