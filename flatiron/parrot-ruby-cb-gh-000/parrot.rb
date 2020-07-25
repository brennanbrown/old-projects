# This lab is to demonstrate control of the return value of a method.

# Method has an argument that has a default value.
def parrot(squawk = "Squawk!")
  # Returns the argument on the CLI.
  puts "#{squawk}"
  # Returns the argument to be used by other methods.
  squawk
end
