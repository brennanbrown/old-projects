def fizzbuzz(int)
  if int % 3 == 0 && int % 5 == 0  # if the number int is divisible by 3
    return "FizzBuzz" # Go fizz
  elsif int % 5 == 0
    return "Buzz"
  elsif int % 3 == 0
    return "Fizz"
  else
    return nil
  end
end
