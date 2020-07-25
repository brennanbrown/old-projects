def rescue_princess_peach
  status = "rescued"
  puts "Hooray! Mario has rescued Princess Peach."
end

# A method of extending the scope of a variable to outside of a particular method
# is to initalize it outside of the method itself.
# After the method is called, the variable will be updated accordingly.
status = nil

rescue_princess_peach
puts status
