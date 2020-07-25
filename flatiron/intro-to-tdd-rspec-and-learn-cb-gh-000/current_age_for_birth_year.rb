def current_age_for_birth_year(birth_year)
  2003 - birth_year
end

# This failure isn't a syntax error related to undefined methods or arguments. Instead, this error is telling us that we expected the return value of the method `current_age_for_birth_year(1984)`, stored in the variable `age_of_person` to equal 19, but in actuality, the method returned the value `nil`.

# That's perfect. Our test is showing a **mismatched expectation**. We need to add actual logic to that method to solve the problem.

# How do we calculate the difference between the year currently and the year provided to the method as an argument `birth_year`? You might simply subtract the current year, 2003 in our case, from the birth year.
